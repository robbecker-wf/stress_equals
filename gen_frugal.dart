import 'dart:io';

/// Options for structs shaped like Frugal's Dart output (see research/frugal-dart-codegen.md).
/// Each flag applies one of that review's recommended generator changes.
class Frugal {
  const Frugal({
    this.privateInternals = false,
    this.typedFMethod = false,
    this.constAndTyped = false,
    this.lean = false,
    this.sharedHelpers = false,
  });

  /// Generated methods read private backing fields and call a private `_validate()` instead of the
  /// public getters, `isSetX()` and `validate()` that every struct shares the names of.
  final bool privateInternals;

  /// `FMethod` takes a typed closure instead of calling `Function.apply` on a tear-off.
  final bool typedFMethod;

  /// Field descriptors are `static const`, generated members have explicit return types, and
  /// `DeepCollectionEquality` is a shared const instead of being allocated on every call.
  final bool constAndTyped;

  /// No `getFieldValue`, `setFieldValue`, `isSet(int)`, `clone` or `toString`.
  final bool lean;

  /// `read`/`write` encode and decode lists through shared runtime helpers instead of inline loops.
  final bool sharedHelpers;
}

class _Field {
  const _Field(this.name, this.id, this.kind, {this.required = false, this.optional = false});

  final String name;
  final int id;

  /// One of `i32`, `string`, `list` (a `list<string>`) or `struct` (the previous struct).
  final String kind;
  final bool required;
  final bool optional;

  String get cap => name[0].toUpperCase() + name.substring(1);
  String get idConst => name.toUpperCase();
  String get desc => '_${idConst}_FIELD_DESC';
  bool get usesIssetFlag => kind == 'i32';

  String type(int i) => const {'i32': 'int', 'string': 'String', 'list': 'List<String>'}[kind] ?? 't_prev.Struct_${i - 1}';

  String get ttype => const {'i32': 'I32', 'string': 'STRING', 'list': 'LIST', 'struct': 'STRUCT'}[kind]!;
}

const _fields = [
  _Field('id', 1, 'i32'),
  _Field('name', 2, 'string', required: true),
  _Field('description', 3, 'string', optional: true),
  _Field('count', 4, 'i32', optional: true),
  _Field('tags', 5, 'list', optional: true),
  _Field('child', 6, 'struct', optional: true),
];

void generateFrugal(int num, Frugal f, Directory classesDir, File classesFile, File mainFile) {
  classesDir.createSync(recursive: true);
  File('${classesDir.path}/thrift.dart').writeAsStringSync(_runtime(f));
  var library = StringBuffer("export 'classes/thrift.dart';\n");
  for (var i = 0; i < num; i++) {
    File('${classesDir.path}/struct_$i.dart').writeAsStringSync(_struct(i, f));
    library.writeln("export 'classes/struct_$i.dart';");
  }
  classesFile.writeAsStringSync(library.toString());
  mainFile.writeAsStringSync(_main(num, f));
}

String _runtime(Frugal f) {
  var cst = f.constAndTyped ? 'const ' : '';
  var tbaseExtras = f.lean
      ? ''
      : f.constAndTyped
          ? '  Object? getFieldValue(int fieldID);\n  void setFieldValue(int fieldID, Object? value);\n  bool isSet(int fieldID);\n'
          : '  getFieldValue(int fieldID);\n  setFieldValue(int fieldID, Object? value);\n  bool isSet(int fieldID);\n';
  var rw = f.constAndTyped ? 'void ' : '';
  var fmethod = f.typedFMethod
      ? '''
typedef FHandler = Future<Object?> Function(List<Object?> args);

class FMethod {
  FMethod(this._handler, this.serviceName, this.methodName);

  final FHandler _handler;
  final String serviceName;
  final String methodName;

  Future<Object?> call(List<Object?> args) => _handler(args);
}
'''
      : '''
class FMethod {
  FMethod(Function f, this.serviceName, this.methodName)
      : _handler = ((List<Object?> args) => Function.apply(f, args) as Future<Object?>);

  final Future<Object?> Function(List<Object?>) _handler;
  final String serviceName;
  final String methodName;

  Future<Object?> call(List<Object?> args) => _handler(args);
}
''';
  return '''
// A minimal stand-in for package:thrift and package:frugal, shaped like the real APIs.

class TType {
  static const int STOP = 0;
  static const int I32 = 8;
  static const int STRING = 11;
  static const int STRUCT = 12;
  static const int LIST = 15;
}

class TStruct {
  ${cst}TStruct(this.name);
  final String name;
}

class TField {
  ${cst}TField(this.name, this.type, this.id);
  final String name;
  final int type;
  final int id;
}

class TList {
  ${cst}TList(this.elementType, this.length);
  final int elementType;
  final int length;
}

class TProtocolError extends Error {
  TProtocolError(this.message);
  final String message;
}

abstract class TProtocol {
  void readStructBegin();
  void readStructEnd();
  TField readFieldBegin();
  void readFieldEnd();
  TList readListBegin();
  void readListEnd();
  int readI32();
  String readString();
  void writeStructBegin(TStruct struct);
  void writeStructEnd();
  void writeFieldBegin(TField field);
  void writeFieldEnd();
  void writeFieldStop();
  void writeListBegin(TList list);
  void writeListEnd();
  void writeI32(int? value);
  void writeString(String? value);
}

class MemoryProtocol implements TProtocol {
  final List<Object?> buffer = [];
  void readStructBegin() {}
  void readStructEnd() {}
  TField readFieldBegin() => buffer.isEmpty ? TField('', TType.STOP, 0) : buffer.removeLast() as TField;
  void readFieldEnd() {}
  TList readListBegin() => buffer.removeLast() as TList;
  void readListEnd() {}
  int readI32() => buffer.removeLast() as int;
  String readString() => buffer.removeLast() as String;
  void writeStructBegin(TStruct struct) {}
  void writeStructEnd() {}
  void writeFieldBegin(TField field) => buffer.add(field);
  void writeFieldEnd() {}
  void writeFieldStop() {}
  void writeListBegin(TList list) => buffer.add(list);
  void writeListEnd() {}
  void writeI32(int? value) => buffer.add(value);
  void writeString(String? value) => buffer.add(value);
}

class TProtocolUtil {
  static void skip(TProtocol prot, int type) {}
}

abstract class TBase {
  ${rw}read(TProtocol iprot);
  ${rw}write(TProtocol oprot);
$tbaseExtras}

class DeepCollectionEquality {
  const DeepCollectionEquality();

  bool equals(Object? a, Object? b) {
    if (a is List && b is List) {
      if (a.length != b.length) return false;
      for (var i = 0; i < a.length; i++) {
        if (!equals(a[i], b[i])) return false;
      }
      return true;
    }
    return a == b;
  }

  int hash(Object? o) => o is List ? Object.hashAll(o.map(hash)) : o.hashCode;
}

List<T> readList<T>(TProtocol iprot, T Function(TProtocol) readElement) {
  final list = iprot.readListBegin();
  final result = <T>[];
  for (var i = 0; i < list.length; i++) {
    result.add(readElement(iprot));
  }
  iprot.readListEnd();
  return result;
}

void writeList<T>(TProtocol oprot, int elementType, List<T> values, void Function(TProtocol, T) writeElement) {
  oprot.writeListBegin(TList(elementType, values.length));
  for (final value in values) {
    writeElement(oprot, value);
  }
  oprot.writeListEnd();
}

class FContext {}

$fmethod''';
}

String _struct(int i, Frugal f) {
  var p = f.privateInternals;
  var typed = f.constAndTyped;
  var fields = [for (var field in _fields) if (field.kind != 'struct' || i > 0) field];
  var name = 'Struct_$i';
  String rt(String type) => typed ? '$type ' : '';
  // How generated code reads a field of `this` or of another instance.
  String get(_Field x) => p ? 'this._${x.name}' : 'this.${x.name}';
  String getOn(String o, _Field x) => p ? '$o._${x.name}' : '$o.${x.name}';
  String isSetOf(_Field x) => p ? (x.usesIssetFlag ? 'this.__isset_${x.name}' : 'this._${x.name} != null') : 'isSet${x.cap}()';
  String assign(_Field x, String value) => p
      ? (x.usesIssetFlag ? 'this._${x.name} = $value; this.__isset_${x.name} = true;' : 'this._${x.name} = $value;')
      : 'this.${x.name} = $value;';
  var deepEq = typed ? '_deepEquality' : 'thrift.DeepCollectionEquality()';
  var validate = p ? '_validate' : 'validate';

  var sb = StringBuffer("import 'thrift.dart' as thrift;\n");
  if (i > 0) sb.writeln("import 'struct_${i - 1}.dart' as t_prev;");
  if (typed) sb.writeln('\nconst _deepEquality = thrift.DeepCollectionEquality();');
  var st = typed ? 'static const' : 'static final';
  sb.writeln('\nclass $name implements thrift.TBase {');
  sb.writeln("  $st thrift.TStruct _STRUCT_DESC = thrift.TStruct('$name');");
  for (var x in fields) {
    sb.writeln("  $st thrift.TField ${x.desc} = thrift.TField('${x.name}', thrift.TType.${x.ttype}, ${x.id});");
  }
  sb.writeln();

  for (var x in fields) {
    var t = x.type(i);
    sb.writeln('  $t? _${x.name}${x.name == 'id' ? ' = 0' : ''};');
    sb.writeln('  static const int ${x.idConst} = ${x.id};');
    if (x.usesIssetFlag) sb.writeln('  bool __isset_${x.name} = false;');
  }
  sb.writeln();

  for (var x in fields) {
    var t = x.type(i);
    sb.writeln('  $t? get ${x.name} => this._${x.name};\n');
    if (x.usesIssetFlag) {
      sb.writeln('  set ${x.name}($t? ${x.name}) {\n    this._${x.name} = ${x.name};\n    this.__isset_${x.name} = true;\n  }\n');
      sb.writeln('  bool isSet${x.cap}() => this.__isset_${x.name};\n');
      sb.writeln('  ${rt('void')}unset${x.cap}() {\n    this.__isset_${x.name} = false;\n  }\n');
    } else {
      sb.writeln('  set ${x.name}($t? ${x.name}) {\n    this._${x.name} = ${x.name};\n  }\n');
      sb.writeln('  bool isSet${x.cap}() => this._${x.name} != null;\n');
      sb.writeln('  ${rt('void')}unset${x.cap}() {\n    this._${x.name} = null;\n  }\n');
    }
  }

  if (!f.lean) {
    sb.writeln('  @override\n  ${rt('Object?')}getFieldValue(int fieldID) {\n    switch (fieldID) {');
    for (var x in fields) {
      sb.writeln('      case ${x.idConst}:\n        return ${get(x)};');
    }
    sb.writeln("      default:\n        throw ArgumentError('Field \$fieldID doesn\\'t exist!');\n    }\n  }\n");

    sb.writeln('  @override\n  ${rt('void')}setFieldValue(int fieldID, Object? value) {\n    switch (fieldID) {');
    for (var x in fields) {
      var t = x.type(i);
      var unset = p ? (x.usesIssetFlag ? 'this.__isset_${x.name} = false;' : 'this._${x.name} = null;') : 'unset${x.cap}();';
      sb.writeln('      case ${x.idConst}:\n        if (value == null) {\n          $unset\n        } else {\n'
          '          ${assign(x, 'value as $t?')}\n        }\n        break;\n');
    }
    sb.writeln("      default:\n        throw ArgumentError('Field \$fieldID doesn\\'t exist!');\n    }\n  }\n");

    sb.writeln('  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise');
    sb.writeln('  @override\n  bool isSet(int fieldID) {\n    switch (fieldID) {');
    for (var x in fields) {
      sb.writeln('      case ${x.idConst}:\n        return ${isSetOf(x)};');
    }
    sb.writeln("      default:\n        throw ArgumentError('Field \$fieldID doesn\\'t exist!');\n    }\n  }\n");
  }

  // read
  sb.writeln('  @override\n  ${rt('void')}read(thrift.TProtocol iprot) {\n    iprot.readStructBegin();');
  sb.writeln('    for (thrift.TField field = iprot.readFieldBegin();\n        field.type != thrift.TType.STOP;\n'
      '        field = iprot.readFieldBegin()) {\n      switch (field.id) {');
  var elem = 0;
  for (var x in fields) {
    sb.writeln('        case ${x.idConst}:\n          if (field.type == thrift.TType.${x.ttype}) {');
    switch (x.kind) {
      case 'i32':
        sb.writeln('            ${assign(x, 'iprot.readI32()')}');
        break;
      case 'string':
        sb.writeln('            ${assign(x, 'iprot.readString()')}');
        break;
      case 'list':
        if (f.sharedHelpers) {
          sb.writeln('            ${assign(x, 'thrift.readList(iprot, (p) => p.readString())')}');
        } else {
          var l = elem++, out = elem++, idx = elem++, v = elem++;
          sb.writeln('            thrift.TList elem$l = iprot.readListBegin();\n'
              '            final elem$out = <String>[];\n'
              '            for (int elem$idx = 0; elem$idx < elem$l.length; ++elem$idx) {\n'
              '              String elem$v = iprot.readString();\n'
              '              elem$out.add(elem$v);\n            }\n'
              '            iprot.readListEnd();\n'
              '            ${assign(x, 'elem$out')}');
        }
        break;
      case 'struct':
        var c = elem++;
        sb.writeln('            final elem$c = t_prev.Struct_${i - 1}();\n            elem$c.read(iprot);\n'
            '            ${assign(x, 'elem$c')}');
    }
    sb.writeln('          } else {\n            thrift.TProtocolUtil.skip(iprot, field.type);\n          }\n          break;');
  }
  sb.writeln('        default:\n          thrift.TProtocolUtil.skip(iprot, field.type);\n          break;\n      }\n'
      '      iprot.readFieldEnd();\n    }\n    iprot.readStructEnd();\n\n'
      '    // check for required fields of primitive type, which can\'t be checked in the validate method\n'
      '    $validate();\n  }\n');

  // write
  sb.writeln('  @override\n  ${rt('void')}write(thrift.TProtocol oprot) {\n    $validate();\n\n'
      '    oprot.writeStructBegin(_STRUCT_DESC);');
  for (var x in fields) {
    var e = 'elem${elem++}';
    sb.writeln('    final $e = ${get(x)};');
    var cond = x.optional
        ? (x.usesIssetFlag ? isSetOf(x) : (p ? '$e != null' : '${isSetOf(x)} && $e != null'))
        : x.required
            ? '$e != null'
            : null;
    var indent = cond == null ? '    ' : '      ';
    if (cond != null) sb.writeln('    if ($cond) {');
    sb.writeln('${indent}oprot.writeFieldBegin(${x.desc});');
    switch (x.kind) {
      case 'i32':
        sb.writeln('${indent}oprot.writeI32($e);');
        break;
      case 'string':
        sb.writeln('${indent}oprot.writeString($e);');
        break;
      case 'list':
        if (f.sharedHelpers) {
          sb.writeln('${indent}thrift.writeList(oprot, thrift.TType.STRING, $e, (p, String v) => p.writeString(v));');
        } else {
          var v = 'elem${elem++}';
          sb.writeln('${indent}oprot.writeListBegin(thrift.TList(thrift.TType.STRING, $e.length));\n'
              '${indent}for (var $v in $e) {\n$indent  oprot.writeString($v);\n$indent}\n'
              '${indent}oprot.writeListEnd();');
        }
        break;
      case 'struct':
        sb.writeln('$indent$e.write(oprot);');
    }
    sb.writeln('${indent}oprot.writeFieldEnd();');
    if (cond != null) sb.writeln('    }');
  }
  sb.writeln('    oprot.writeFieldStop();\n    oprot.writeStructEnd();\n  }\n');

  if (!f.lean) {
    sb.writeln("  @override\n  String toString() {\n    StringBuffer ret = StringBuffer('$name(');\n");
    var first = true;
    for (var x in fields) {
      var guard = x.optional ? '    if (${isSetOf(x)}) {\n' : '';
      var ind = x.optional ? '      ' : '    ';
      sb.write(guard);
      if (!first) sb.writeln("$ind" "ret.write(', ');");
      sb.writeln("$ind" "ret.write('${x.name}:');");
      if (x.kind == 'i32') {
        sb.writeln('${ind}ret.write(${get(x)});');
      } else {
        sb.writeln("${ind}if (${get(x)} == null) {\n$ind  ret.write('null');\n$ind} else {\n"
            "$ind  ret.write(${get(x)});\n$ind}");
      }
      if (x.optional) sb.writeln('    }');
      sb.writeln();
      first = false;
    }
    sb.writeln("    ret.write(')');\n\n    return ret.toString();\n  }\n");
  }

  var comparisons = [
    for (var x in fields)
      x.kind == 'list' ? '$deepEq.equals(${get(x)}, ${getOn('o', x)})' : '${get(x)} == ${getOn('o', x)}',
  ];
  sb.writeln('  @override\n  bool operator ==(Object o) {\n    if (o is $name) {\n'
      '      return ${comparisons.join(' &&\n          ')};\n    }\n    return false;\n  }\n');

  sb.writeln('  @override\n  int get hashCode {\n    var value = 17;');
  for (var x in fields) {
    var h = x.kind == 'list' ? '$deepEq.hash(${get(x)})' : '${get(x)}.hashCode';
    sb.writeln('    value = (value * 31) ^ $h;');
  }
  sb.writeln('    return value;\n  }\n');

  if (!f.lean) {
    var params = [for (var x in fields) '${x.type(i)}? ${x.name}'].join(', ');
    var cascades = [
      for (var x in fields)
        p
            ? (x.usesIssetFlag
                ? '\n      .._${x.name} = ${x.name} ?? this._${x.name}\n      ..__isset_${x.name} = true'
                : '\n      .._${x.name} = ${x.name} ?? this._${x.name}')
            : '\n      ..${x.name} = ${x.name} ?? this.${x.name}',
    ].join();
    sb.writeln('  $name clone({$params}) {\n    return $name()$cascades;\n  }\n');
  }

  if (p) sb.writeln('  ${rt('void')}validate() => _validate();\n');
  sb.writeln('  ${rt('void')}$validate() {\n    // check for required fields');
  for (var x in fields.where((x) => x.required)) {
    sb.writeln("    if (${get(x)} == null) {\n      throw thrift.TProtocolError(\"Required field '${x.name}' wasn't present in the struct $name\");\n    }");
  }
  sb.writeln('  }\n}\n');

  var handler = f.typedFMethod
      ? '(args) => _fetch(args[0] as thrift.FContext, args[1] as int?, args[2] as $name?)'
      : 'this._fetch';
  sb.writeln('''class Client_$i {
  Client_$i(this._protocol);

  final thrift.TProtocol _protocol;

  late final _fetch_fmethod = thrift.FMethod($handler, 'Service_$i', 'fetchStruct$i');

  Future<$name?> fetchStruct$i(thrift.FContext ctx, int? id, $name? request) {
    return this._fetch_fmethod([ctx, id, request]).then((value) => value as $name?);
  }

  Future<$name?> _fetch(thrift.FContext ctx, int? id, $name? request) async {
    request?.write(_protocol);
    final result = $name();
    result.read(_protocol);
    return result;
  }
}''');
  return sb.toString();
}

String _main(int num, Frugal f) {
  var sb = StringBuffer('''import 'package:stress_equals/src/classes.dart';

void main() {
  var protocol = MemoryProtocol();
  var ctx = FContext();
  var s = <TBase, bool>{};
  var calls = <Future<Object?>>[];
  print('Creating structs and adding to a map');
''');
  for (var i = 0; i < num; i++) {
    sb.writeln("  s[Struct_$i()\n    ..id = $i\n    ..name = 'struct $i'] = false;");
    sb.writeln('  calls.add(Client_$i(protocol).fetchStruct$i(ctx, $i, null));');
  }
  sb.writeln('''
  var keys = s.keys.toList();
  for (var key in keys) {
    key.write(protocol);
    key.read(protocol);
  }''');
  if (!f.lean) {
    sb.writeln('''  for (var key in keys) {
    key.setFieldValue(1, key.getFieldValue(1));
    if (key.isSet(3)) print('\$key has a description');
  }''');
  }
  sb.writeln('''
  print('Calling equals on stuff');
  for (var i = 0; i < keys.length - 1; i++) {
    if (keys[i] == keys[i + 1]) {
      print('\${keys[i].runtimeType} and \${keys[i + 1].runtimeType} are equal and should not be');
    }
  }
  Future.wait(calls).then((results) => print('\${results.length} calls finished'));
}''');
  return sb.toString();
}
