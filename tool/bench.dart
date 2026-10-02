import 'dart:convert';
import 'dart:io';

import 'bench_report.dart';

const defaultSizes = [
  1, 10, 25, 50, 100, 250, 500, 750, 1000, 1500, 2000, 2500, 3000, 4000, //
];

/// Frugal-style structs cost about 30x more per class to compile than `ZBase_i`, so their sweep stops
/// sooner by default.
const defaultFrugalMaxN = 1000;

/// Usage:
///   dart tool/bench.dart [--variants="dynamic none"] [--frugal-max=1000] [sizes...]
///                                         Run the sweep, then write the report.
///   dart tool/bench.dart report [dir]     Rebuild the report for an existing run (default: latest).
Future<void> main(List<String> args) async {
  if (args.isNotEmpty && args.first == 'report') {
    var dir = args.length > 1 ? Directory(args[1]) : latestResultsDir();
    writeReport(dir);
    print('Report: ${dir.path}/report.html');
    return;
  }

  var variants = variantLabels.keys.toList();
  var frugalMaxN = defaultFrugalMaxN;
  var sizeArgs = <String>[];
  for (var arg in args) {
    if (arg.startsWith('--frugal-max=')) {
      frugalMaxN = int.parse(arg.substring('--frugal-max='.length));
    } else if (arg.startsWith('--variants=')) {
      variants = _split(arg.substring('--variants='.length));
      var unknown = variants.where((v) => !variantLabels.containsKey(v));
      if (unknown.isNotEmpty) {
        stderr.writeln('Unknown variant(s): ${unknown.join(', ')}. Expected: ${variantLabels.keys.join(', ')}');
        exit(64);
      }
    } else {
      sizeArgs.add(arg);
    }
  }
  var sizes = sizeArgs.isEmpty ? defaultSizes : (sizeArgs.expand(_split).map(int.parse).toSet().toList()..sort());

  var dir = Directory('$resultsRoot/${_timestamp()}')..createSync(recursive: true);
  var logs = Directory('${dir.path}/logs')..createSync();
  var meta = {
    'started': DateTime.now().toIso8601String(),
    'dartVersion': Platform.version,
    'os': '${Platform.operatingSystem} ${Platform.operatingSystemVersion}',
    'processors': Platform.numberOfProcessors,
    'sizes': sizes,
    'variants': variants,
    'frugalMaxN': frugalMaxN,
  };
  var runs = <Map<String, dynamic>>[];
  var resultsFile = File('${dir.path}/results.json');

  print('Writing results to ${dir.path}');
  // Variants are interleaved at each size so machine slowdowns during the sweep hit them all equally.
  for (var n in sizes) {
    for (var variant in variants) {
      if (isFrugal(variant) && n > frugalMaxN) continue;
      stdout.write('N=$n ${variant.padRight(20)}: generating... ');
      var gen = await Process.run('make', ['--no-print-directory', 'gen', 'N=$n', 'VARIANT=$variant']);
      if (gen.exitCode != 0) _fail('make gen N=$n VARIANT=$variant', gen);

      stdout.write('compiling... ');
      var stopwatch = Stopwatch()..start();
      var compile = await Process.run('make', ['--no-print-directory', 'compile']);
      stopwatch.stop();
      var output = '${compile.stdout}${compile.stderr}';
      File('${logs.path}/n_${n}_$variant.log').writeAsStringSync(output);
      if (compile.exitCode != 0) _fail('make compile (N=$n VARIANT=$variant)', compile);

      var run = parseCompileOutput(n, variant, output, stopwatch.elapsedMicroseconds / 1e6);
      runs.add(run.toJson());
      // Rewritten after every run so a partial sweep still leaves usable data.
      resultsFile.writeAsStringSync(const JsonEncoder.withIndent('  ').convert({'meta': meta, 'runs': runs}));
      print('${run.totalSeconds.toStringAsFixed(2)}s compile (${run.wallSeconds.toStringAsFixed(2)}s wall)');
    }
  }

  writeReport(dir);
  print('Report: ${dir.path}/report.html');
}

List<String> _split(String s) => s.split(RegExp(r'[,\s]+')).where((p) => p.isNotEmpty).toList();

String _timestamp() {
  var now = DateTime.now();
  String two(int v) => v.toString().padLeft(2, '0');
  return '${now.year}${two(now.month)}${two(now.day)}-${two(now.hour)}${two(now.minute)}${two(now.second)}';
}

Never _fail(String step, ProcessResult result) {
  stderr
    ..writeln('\n$step failed with exit code ${result.exitCode}')
    ..writeln(result.stdout)
    ..writeln(result.stderr);
  exit(1);
}
