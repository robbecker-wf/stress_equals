import 'dart:io';

var componentTemplate = File('web/component.dart.template').readAsStringSync();
var mainFile = File('web/main.dart');

void main(List<String> args) {
  var num = int.parse(args.isNotEmpty ? args.first : '10');
  deleteOldFiles(num);
  generateNewFiles(num);
}

void deleteOldFiles(int num) {
  for (var i = 0; i < num; i++) {
    try {
      File('web/component$i').deleteSync();
    } catch (_) {}
  }
  try {
    mainFile.deleteSync();
  } catch (_) {}
}

void generateNewFiles(int num) {
  var imports = StringBuffer();
  var mainCalls = StringBuffer();

  for (var i = 0; i < num; i++) {
    imports.writeln("import 'component${i}.dart' as component${i};");
    mainCalls.writeln('  component${i}.mane();');
    var f = File('web/component$i.dart');
    var out = '$componentTemplate'.replaceAll('XX', '$i');
    f.writeAsStringSync(out);
  }
  mainFile.writeAsStringSync('''
// GENERATED: $num components
$imports

void main() async {
$mainCalls
}
''');
}


