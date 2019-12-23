import 'dart:io';

var classesFile = File('lib/src/classes.dart');
var mainFile = File('bin/main.dart');

void main(List<String> args) {
  var num = int.parse(args.isNotEmpty ? args.first : '10');
  deleteOldFiles();
  generateNewFiles(num);
}

void deleteOldFiles() {
  try {
    classesFile.deleteSync();
  } catch (_) {}
  try {
    mainFile.deleteSync();
  } catch (_) {}
}

void generateNewFiles(int num) {
  var sb = StringBuffer();
  sb.writeln('class ZBase {}');
  for (var i = 0; i < num; i++) {
    sb.writeln('''class ZBase_$i extends ZBase {
  int val;
  ZBase_$i(this.val);

  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_$i');
    return other is ZBase_$i && val == other.val;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_$i');
    var value = 17;
    value = (value * 31) ^ val.hashCode;
  return value;
  }

  @override
  String toString() => 'ZBase_$i(\$val)';
}
''');
  }
  classesFile.writeAsStringSync(sb.toString());
  var nm1 = num - 1;
  sb.clear();
  sb.write('''import 'package:stress_equals/src/classes.dart';

void main() {
  var s = <ZBase, bool>{};
  print('Creating classes and adding to a map');
''');
  for (var i = 0; i < num; i++) {
    sb.writeln('  s[ZBase_$i($i)] = false;');
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
  mainFile.writeAsStringSync(sb.toString());
}


