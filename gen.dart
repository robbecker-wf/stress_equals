import 'dart:io';

var classesFile = File('lib/src/classes.dart');
var mainFile = File('bin/main.dart');
var classesDir = Directory('lib/src/classes');

class Variant {
  const Variant({
    this.equalsParamType = 'dynamic',
    this.includeHashCode = true,
    this.includeToString = true,
    this.uniqueFieldNames = false,
    this.fieldInBase = false,
    this.toStringReadsField = true,
    this.splitMain = false,
    this.libraryPerClass = false,
    this.privateField = false,
  });

  /// Parameter type of the generated `operator ==`; `null` means no override.
  final String? equalsParamType;
  final bool includeHashCode;
  final bool includeToString;

  /// Names each class's field `val_<i>` instead of every class sharing the name `val`.
  final bool uniqueFieldNames;

  /// Declares `val` once on `ZBase` instead of on every subclass.
  final bool fieldInBase;

  final bool toStringReadsField;

  /// Spreads the map inserts in `main` over helper functions of [splitChunk] statements each.
  final bool splitMain;

  /// Puts each class in its own library under `lib/src/classes/`, re-exported by `classes.dart`.
  final bool libraryPerClass;

  /// Names the field `_val`. Private names are library-scoped, so this only gives each class a
  /// distinct name when combined with [libraryPerClass].
  final bool privateField;
}

const splitChunk = 100;

const variants = {
  'dynamic': Variant(),
  'object': Variant(equalsParamType: 'Object'),
  'nullable': Variant(equalsParamType: 'Object?'),
  'none': Variant(equalsParamType: null),
  'hashcode': Variant(equalsParamType: null, includeToString: false),
  'tostring': Variant(equalsParamType: null, includeHashCode: false),
  'plain': Variant(equalsParamType: null, includeHashCode: false, includeToString: false),
  'unique': Variant(uniqueFieldNames: true),
  'split': Variant(splitMain: true),
  'tostring-const': Variant(equalsParamType: null, includeHashCode: false, toStringReadsField: false),
  'basefield': Variant(fieldInBase: true),
  'unique-split': Variant(uniqueFieldNames: true, splitMain: true),
  'libs': Variant(libraryPerClass: true),
  'private': Variant(libraryPerClass: true, privateField: true),
};

void main(List<String> args) {
  var num = int.parse(args.isNotEmpty ? args.first : '10');
  var name = args.length > 1 ? args[1] : 'dynamic';
  var variant = variants[name];
  if (variant == null) {
    stderr.writeln('Unknown variant "$name". Expected one of: ${variants.keys.join(', ')}');
    exit(64);
  }
  deleteOldFiles();
  generateNewFiles(num, variant);
}

void deleteOldFiles() {
  try {
    classesFile.deleteSync();
  } catch (_) {}
  try {
    mainFile.deleteSync();
  } catch (_) {}
  if (classesDir.existsSync()) classesDir.deleteSync(recursive: true);
}

void generateNewFiles(int num, Variant variant) {
  var base = variant.fieldInBase ? 'class ZBase {\n  int val;\n  ZBase(this.val);\n}' : 'class ZBase {}';
  var library = StringBuffer();
  if (variant.libraryPerClass) {
    classesDir.createSync(recursive: true);
    File('${classesDir.path}/zbase.dart').writeAsStringSync('$base\n');
    library.writeln("export 'classes/zbase.dart';");
  } else {
    library.writeln(base);
  }
  var sb = StringBuffer();
  for (var i = 0; i < num; i++) {
    sb.clear();
    if (variant.libraryPerClass) sb.writeln("import 'zbase.dart';\n");
    var val = variant.privateField ? '_val' : variant.uniqueFieldNames ? 'val_$i' : 'val';
    sb.writeln(variant.fieldInBase
        ? 'class ZBase_$i extends ZBase {\n  ZBase_$i(int val) : super(val);\n'
        : 'class ZBase_$i extends ZBase {\n  int $val;\n  ZBase_$i(this.$val);\n');
    if (variant.equalsParamType != null) {
      sb.writeln('''  @override
  bool operator ==(${variant.equalsParamType} other) {
    print('equals called on ZBase_$i');
    return other is ZBase_$i && $val == other.$val;
  }
''');
    }
    if (variant.includeHashCode) {
      sb.writeln('''  @override
  int get hashCode {
    print('hashCode called on ZBase_$i');
    var value = 17;
    value = (value * 31) ^ $val.hashCode;
    return value;
  }
''');
    }
    if (variant.includeToString) {
      sb.writeln('''  @override
  String toString() => ${variant.toStringReadsField ? "'ZBase_$i(\$$val)'" : "'ZBase_$i'"};
''');
    }
    sb.writeln('}');
    if (variant.libraryPerClass) {
      File('${classesDir.path}/zbase_$i.dart').writeAsStringSync(sb.toString());
      library.writeln("export 'classes/zbase_$i.dart';");
    } else {
      library.write(sb);
    }
  }
  classesFile.writeAsStringSync(library.toString());
  var nm1 = num - 1;
  sb.clear();
  sb.write('''import 'package:stress_equals/src/classes.dart';

void main() {
  var s = <ZBase, bool>{};
  print('Creating classes and adding to a map');
''');
  if (variant.splitMain) {
    for (var chunk = 0; chunk * splitChunk < num; chunk++) {
      sb.writeln('  _add$chunk(s);');
    }
  } else {
    for (var i = 0; i < num; i++) {
      sb.writeln('  s[ZBase_$i($i)] = false;');
    }
  }
  sb.writeln('''
  var keys = s.keys.toList();
  var zero = ZBase_$nm1($nm1);
  print('Calling contains $nm1');
  if (keys.contains(zero)) {
    print('It contains a $nm1!');
  } else {
    print('No contains $nm1');
  }
  
  print('Getting an object from the map');
  print('retreived value for key \$zero: \${s[zero]}');
  
  print('Calling equals on stuff');
  
  for (var i = 0; i < keys.length - 1; i++) {
    if (keys[i] == keys[i+1]) {
      print('\${keys[i].runtimeType} and \${keys[i+1].runtimeType} are equal and should not be');
    }
  }
}''');
  if (variant.splitMain) {
    for (var chunk = 0; chunk * splitChunk < num; chunk++) {
      sb.writeln('\nvoid _add$chunk(Map<ZBase, bool> s) {');
      for (var i = chunk * splitChunk; i < num && i < (chunk + 1) * splitChunk; i++) {
        sb.writeln('  s[ZBase_$i($i)] = false;');
      }
      sb.writeln('}');
    }
  }
  mainFile.writeAsStringSync(sb.toString());
}
