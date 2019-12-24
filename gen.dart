import 'dart:io';

const bool includeEqualsMethods = false;
// const bool includeSameAs = true;
const bool callSameAs = false;
const bool callEquals = false;
const int numAdditionalFields = 0;
const bool useGetterSetters = false;

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
  sb.writeln('''
bool sameAs(ZBase a, ZBase b) {
  print('sameAs called on ZBase');
  return a.val == b.val;
}

class ZBase {
  int val;
  ZBase(this.val);    
}
''');
  for (var i = 0; i < num; i++) {
    sb.write('''class ZBase_$i extends ZBase {
  ZBase_$i(int v''');
  if (numAdditionalFields > 0) {
    // sb.write(', {');
    // for (var i = 0; i < numAdditionalFields; i++) {
    //   sb.write('this.a$i,');
    // }
    // sb.write('}');
  }
  sb.writeln('): super(v);');

  for (var i = 0; i < numAdditionalFields; i++) {
    sb.writeln('    int _a$i;');
    if (useGetterSetters) {
      sb.writeln('    int get a$i => _a$i;');
      sb.writeln('    void set a$i(int x) => _a$i = x;');
    }
  }
  
  if (includeEqualsMethods) {
    sb.writeln('''
  @override
  bool operator ==(dynamic other) {
    print('equals called on ZBase_$i');
    return other is ZBase_$i && val == other.val/* && x == other.x*/;
  }

  @override
  int get hashCode {
    print('hashCode called on ZBase_$i');
    var value = 17;
    value = (value * 31) ^ val.hashCode;
    // value = (value * 31) ^ x.hashCode;
  return value;
  }
''');
  }
  sb.writeln('''
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
  // var s = <ZBase, bool>{};
  print('Creating classes and adding to a map');
''');
  for (var i = 0; i < num; i++) {
    String assign = 'false;';
    if (callEquals) {
      assign = 'ZBase_$i($i,$i) == ZBase_$i($i,$i);';
    } else if (callSameAs) {
      assign = 'sameAs(ZBase_$i($i/*,$i*/), ZBase_$i($i/*,$i*/));';
      sb.writeln(assign);
    }
    sb.writeln('ZBase_$i($i);');
    //sb.writeln('  s[ZBase_$i($i,$i)] = $assign');
    
  }
  sb.writeln('''
  // List<ZBase> keys = s.keys.toList();
  // var last = ZBase_$nm1($nm1,$nm1);
  // print('Calling contains $nm1');
  // if (keys.contains(last)) {
  //   print('It contains a $nm1!');
  // } else {
  //   print('No contains $nm1');
  // }
  
  // print('Getting an object from the map');
  // print('retreived value for key \$last: \${s[last]}');
  
  // print('Calling equals on stuff');
  
  // for (var i = 0; i < keys.length - 1; i++) {
  //   if (sameAs(keys[i],keys[i+1])) {
  //     print('SameAs: \${keys[i].runtimeType} and \${keys[i+1].runtimeType} are equal and should not be');
  //   }
  //   if (keys[i] == keys[i+1]) {
  //     print('==: \${keys[i].runtimeType} and \${keys[i+1].runtimeType} are equal and should not be');
  //   }
  // }
}''');
  mainFile.writeAsStringSync(sb.toString());
}


