import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

const resultsRoot = 'bench_results';

/// The `gen.dart` variants, in the order they are benchmarked and shown.
const variantLabels = {
  'dynamic': '== (dynamic other)',
  'object': '== (Object other)',
  'nullable': '== (Object? other)',
  'none': 'no == override',
  'hashcode': 'hashCode only',
  'tostring': 'toString only',
  'plain': 'no overrides',
  'unique': '== (dynamic other), unique field names',
  'split': '== (dynamic other), main split up',
  'tostring-const': 'toString only, no field read',
  'basefield': '== (dynamic other), field on base class',
  'unique-split': 'unique field names + main split up',
  'libs': '== (dynamic other), library per class',
  'private': '== (dynamic other), library per class, private _val',
  'frugal': 'Frugal-style, as generated today',
  'frugal-private': 'Frugal-style, internals use private fields and _validate()',
  'frugal-typed-fmethod': 'Frugal-style, FMethod without Function.apply',
  'frugal-const': 'Frugal-style, const descriptors and explicit return types',
  'frugal-lean': 'Frugal-style, no getFieldValue/setFieldValue/isSet/clone/toString',
  'frugal-helpers': 'Frugal-style, shared list read/write helpers',
  'frugal-all': 'Frugal-style, all of the above',
};

bool isFrugal(String variant) => variant.startsWith('frugal');

const _variantColors = {
  'dynamic': '#e15759',
  'object': '#4e79a7',
  'nullable': '#f28e2b',
  'none': '#59a14f',
  'hashcode': '#76b7b2',
  'tostring': '#edc948',
  'plain': '#9c755f',
  'unique': '#b07aa1',
  'split': '#ff9da7',
  'tostring-const': '#bab0ac',
  'basefield': '#1b9e77',
  'unique-split': '#7570b3',
  'libs': '#d95f02',
  'private': '#66a61e',
  'frugal': '#e15759',
  'frugal-private': '#4e79a7',
  'frugal-typed-fmethod': '#f28e2b',
  'frugal-const': '#76b7b2',
  'frugal-lean': '#edc948',
  'frugal-helpers': '#b07aa1',
  'frugal-all': '#59a14f',
};

/// Pairs of variants that differ in exactly one way: [with, without, what the difference is].
const _experiments = [
  ['dynamic', 'none', 'Overriding <code>==</code>'],
  ['none', 'tostring', 'Adding a <code>hashCode</code> override to a <code>toString</code> override'],
  ['none', 'hashcode', 'Adding a <code>toString</code> override to a <code>hashCode</code> override'],
  ['tostring', 'tostring-const', 'Reading the shared field <code>val</code> inside <code>toString</code>'],
  ['tostring-const', 'plain', 'A <code>toString</code> override that does not read any field'],
  ['dynamic', 'unique', 'Every class declaring a field with the same name (vs. unique names)'],
  ['dynamic', 'basefield', 'Declaring <code>val</code> on every subclass (vs. once on the base class)'],
  ['dynamic', 'split', 'All N inserts in one giant <code>main</code> (vs. helpers of 100 statements)'],
  ['unique', 'unique-split', 'A giant <code>main</code> once field names are unique'],
  ['dynamic', 'libs', 'All classes in one library (vs. a library per class, same public field name)'],
  ['libs', 'private', 'A public field name shared across libraries (vs. a private <code>_val</code> per library)'],
  ['frugal', 'frugal-private', 'Generated internals going through the shared public getters, <code>isSetX()</code> and '
      '<code>validate()</code> (vs. private fields and <code>_validate()</code>)'],
  ['frugal', 'frugal-typed-fmethod', '<code>FMethod</code> calling <code>Function.apply</code> on a tear-off (vs. a typed closure)'],
  ['frugal', 'frugal-const', '<code>static final</code> descriptors, implicit <code>dynamic</code> return types and a new '
      '<code>DeepCollectionEquality</code> per call (vs. <code>const</code>, explicit types and a shared instance)'],
  ['frugal', 'frugal-lean', 'Generating <code>getFieldValue</code>, <code>setFieldValue</code>, <code>isSet</code>, '
      '<code>clone</code> and <code>toString</code> (vs. a lean mode without them)'],
  ['frugal', 'frugal-helpers', 'Inline list loops in <code>read</code>/<code>write</code> (vs. shared runtime helpers)'],
  ['frugal', 'frugal-all', 'Frugal output as generated today (vs. all recommended changes together)'],
];

/// Scaling exponents are fit over the largest-N quarter of the sweep (falling back to N >= 100 when
/// that has too few runs), because fixed costs dominate small N and drag the fit toward linear.
const _fitMinN = 100;
const _fitMinSeconds = 0.01;

int _fitFloor(List<int> ns) {
  var quarter = ns.reduce(math.max) ~/ 4;
  return ns.where((n) => n >= quarter).length >= 3 ? math.max(quarter, _fitMinN) : _fitMinN;
}

const _counterPatterns = {
  'Resolved elements': r'Resolved ([\d,]+) elements',
  'Inference graph elements': r'Added ([\d,]+) elements in inferencing graph',
  'Inferred types': r'Inferred ([\d,]+) types',
  'Compiled methods': r'Compiled ([\d,]+) methods',
  'Output JS characters': r'to ([\d,]+) characters JavaScript',
};

const _palette = [
  '#4e79a7', '#f28e2b', '#e15759', '#76b7b2', '#59a14f', //
  '#edc948', '#b07aa1', '#ff9da7', '#9c755f', '#bab0ac',
];

class CompileRun {
  CompileRun(this.n, this.variant, this.wallSeconds, this.compilerSeconds, this.phases, this.counters);

  factory CompileRun.fromJson(Map<String, dynamic> json) => CompileRun(
        json['n'] as int,
        // Results from before variants existed were all `operator ==(dynamic other)`.
        json['variant'] as String? ?? 'dynamic',
        (json['wallSeconds'] as num).toDouble(),
        (json['compilerSeconds'] as num?)?.toDouble(),
        (json['phases'] as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as num).toDouble())),
        (json['counters'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as int)),
      );

  final int n;
  final String variant;
  final double wallSeconds;

  /// The "Total compile-time" dart2js reports with `-v`; excludes VM startup.
  final double? compilerSeconds;

  /// Phase name to seconds, in the order dart2js prints them. Sub-phases are named `Parent > child`.
  final Map<String, double> phases;
  final Map<String, int> counters;

  double get totalSeconds => compilerSeconds ?? wallSeconds;

  Map<String, dynamic> toJson() => {
        'n': n,
        'variant': variant,
        'wallSeconds': wallSeconds,
        'compilerSeconds': compilerSeconds,
        'phases': phases,
        'counters': counters,
      };
}

CompileRun parseCompileOutput(int n, String variant, String output, double wallSeconds) {
  var phases = <String, double>{};
  var phasePattern = RegExp(r'^[ \t]*\*?([^:\n]+?):\s+([\d.]+)s\s+\(\s*[\d.]+%\)', multiLine: true);
  for (var m in phasePattern.allMatches(output)) {
    phases[m.group(1)!.trim()] = double.parse(m.group(2)!);
  }
  var counters = <String, int>{};
  _counterPatterns.forEach((name, pattern) {
    var m = RegExp(pattern).firstMatch(output);
    if (m != null) counters[name] = int.parse(m.group(1)!.replaceAll(',', ''));
  });
  var total = RegExp(r'Total compile-time ([\d.]+)s').firstMatch(output);
  return CompileRun(
      n, variant, wallSeconds, total == null ? null : double.parse(total.group(1)!), phases, counters);
}

Directory latestResultsDir() {
  var root = Directory(resultsRoot);
  var dirs = root.existsSync()
      ? (root.listSync().whereType<Directory>().where((d) => File('${d.path}/results.json').existsSync()).toList()
        ..sort((a, b) => a.path.compareTo(b.path)))
      : <Directory>[];
  if (dirs.isEmpty) throw StateError('No benchmark results found under $resultsRoot/. Run `make bench` first.');
  return dirs.last;
}

void writeReport(Directory dir) {
  var data = jsonDecode(File('${dir.path}/results.json').readAsStringSync()) as Map<String, dynamic>;
  var meta = data['meta'] as Map<String, dynamic>;
  var byVariant = <String, List<CompileRun>>{};
  for (var json in data['runs'] as List) {
    var run = CompileRun.fromJson(json as Map<String, dynamic>);
    byVariant.putIfAbsent(run.variant, () => []).add(run);
  }
  var order = {...?(meta['variants'] as List?)?.cast<String>(), ...variantLabels.keys, ...byVariant.keys};
  var analyses = [
    for (var v in order)
      if ((byVariant[v]?.length ?? 0) >= 2) _VariantAnalysis(v, byVariant[v]!..sort((a, b) => a.n.compareTo(b.n))),
  ];
  if (analyses.isEmpty) throw StateError('Need at least two runs of one variant to build a report.');
  File('${dir.path}/report.html').writeAsStringSync(_Report(meta, analyses).build());
}

String _label(String variant) => variantLabels[variant] ?? variant;

class _Phase {
  _Phase(this.name, this.values, List<int> ns, List<double> totals)
      : exponent = _fitExponent(ns, values),
        shareLast = totals.last == 0 ? 0 : values.last / totals.last,
        growthShare = totals.last == totals.first ? 0 : (values.last - values.first) / (totals.last - totals.first);

  final String name;
  final List<double> values;
  final double? exponent;
  final double shareLast;
  final double growthShare;

  bool get isTopLevel => !name.contains(' > ');
  String get parent => name.split(' > ').first;
  double get first => values.first;
  double get last => values.last;
  double get delta => last - first;
}

class _Series {
  _Series(this.name, this.points, {this.color});

  final String name;
  final List<math.Point<double>> points;
  final String? color;
}

class _Report {
  _Report(this.meta, this.analyses);

  final Map<String, dynamic> meta;
  final List<_VariantAnalysis> analyses;

  String build() {
    var allNs = {for (var a in analyses) ...a.ns}.toList()..sort();
    var compiles = analyses.fold<int>(0, (sum, a) => sum + a.runs.length);
    var html = StringBuffer()
      ..writeln('<!doctype html><html lang="en"><head><meta charset="utf-8">')
      ..writeln('<title>dart2js compile time vs. generated code shape</title>')
      ..writeln('<style>$_css</style></head><body>')
      ..writeln('<h1>dart2js compile time vs. generated code shape</h1>')
      ..writeln('<p class="meta">${_esc(meta['started'] as String? ?? '')} &middot; '
          'Dart ${_esc((meta['dartVersion'] as String? ?? '').split(' ').first)} &middot; '
          '${_esc(meta['os'] as String? ?? '')} &middot; ${meta['processors']} cores &middot; '
          '$compiles compiles, N = ${allNs.first} to ${allNs.last}</p>')
      ..writeln('<p>Each point is a single <code>dart compile js -O3 --csp</code> of a generated program with N '
          'classes, all instantiated in one <code>main</code>. Variants change one aspect of the generated code; '
          'see <code>variants</code> in <code>gen.dart</code>.</p>');
    var synthetic = analyses.where((a) => !isFrugal(a.variant)).toList();
    var frugal = analyses.where((a) => isFrugal(a.variant)).toList();
    if (synthetic.length > 1) {
      html.writeln(_comparison(
          'Synthetic <code>ZBase_i</code> classes',
          '<p>Each <code>ZBase_i</code> has an <code>int</code> field plus some combination of <code>==</code>, '
              '<code>hashCode</code> and <code>toString</code> overrides.</p>',
          synthetic,
          _find('plain') ?? _find('none')));
    }
    if (frugal.length > 1) {
      html.writeln(_comparison(
          'Frugal-style structs',
          '<p>Each N adds one struct shaped like Frugal&rsquo;s generated Dart (six fields whose names '
              '<code>id</code>, <code>name</code>, <code>description</code>, <code>count</code>, <code>tags</code> and '
              '<code>child</code> are shared by every struct; <code>child</code> is the previous struct), in its own '
              'library, plus a service client calling through <code>FMethod</code>. So N=1000 is 2000 classes. '
              'The variants apply the generator changes recommended in <code>research/frugal-dart-codegen.md</code>. '
              '${meta['frugalMaxN'] == null ? '' : 'These stop at N=${meta['frugalMaxN']} because they are much slower to compile.'}</p>',
          frugal,
          _find('frugal')));
    }
    for (var i = 0; i < analyses.length; i++) {
      var a = analyses[i];
      html.writeln('<details${i == 0 ? ' open' : ''}><summary><h2>Breakdown for '
          '<span style="color:${_variantColors[a.variant] ?? '#222'}">${_esc(_label(a.variant))}</span></h2></summary>'
          '${a.html()}</details>');
    }
    html
      ..writeln('<p class="meta">Full compiler output for each run is in <code>logs/</code> next to this report.</p>')
      ..writeln('</body></html>');
    return html.toString();
  }

  _VariantAnalysis? _find(String variant) {
    for (var a in analyses) {
      if (a.variant == variant) return a;
    }
    return null;
  }

  String _comparison(String title, String intro, List<_VariantAnalysis> group, _VariantAnalysis? baseline) {
    var html = StringBuffer('<h2>Comparing variants: $title</h2>$intro<ul class="findings">');
    for (var finding in _comparisonFindings(group)) {
      html.write('<li>$finding</li>');
    }
    html.write('</ul>');
    var n = _commonMaxN(group);
    if (n != null) html.write('<h3>Variants ranked at N=$n</h3>${_rankingTable(n, group, baseline)}');
    html
      ..write('<h3>Total compile time by variant</h3>')
      ..write(_chart([for (var a in group) a.totalSeries()]))
      ..write('<h3>Same data on a log-log scale</h3>')
      ..write('<p>A straight line with slope k means compile time grows as N<sup>k</sup>.</p>')
      ..write(_chart([for (var a in group) a.totalSeries()], log: true))
      ..write('<h3>Compile time at each N</h3>')
      ..write(_totalsTable(group, baseline));
    if (n != null) {
      html
        ..write('<h3>Phase times at N=$n</h3>')
        ..write('<p>Top-level phases, plus sub-phases that take at least 50 ms in some variant.</p>')
        ..write(_phaseComparisonTable(n, group));
    }
    return html.toString();
  }

  int? _commonMaxN(List<_VariantAnalysis> group) {
    var common = group.map((a) => a.ns.toSet()).reduce((a, b) => a.intersection(b));
    return common.isEmpty ? null : common.reduce(math.max);
  }

  List<String> _comparisonFindings(List<_VariantAnalysis> group) {
    var n = _commonMaxN(group);
    if (n == null) return ['The variants have no N in common, so they cannot be compared directly.'];
    var findings = <String>[];
    double total(_VariantAnalysis a) => a.runAt(n)!.totalSeconds;
    _VariantAnalysis? find(String v) => group.contains(_find(v)) ? _find(v) : null;

    var signatures = [for (var v in const ['dynamic', 'object', 'nullable']) find(v)].whereType<_VariantAnalysis>().toList();
    if (signatures.length >= 2) {
      var sorted = signatures.toList()..sort((a, b) => total(a).compareTo(total(b)));
      var fastest = sorted.first, slowest = sorted.last;
      var spread = total(slowest) / total(fastest) - 1;
      var names = _joinAnd([for (var a in signatures) _esc(_label(a.variant))]);
      findings.add(spread < 0.05
          ? 'The parameter type of <code>==</code> makes no meaningful difference: $names are within '
              '${_pct(spread)} of each other at N=$n, which is within the run-to-run noise of a single compile.'
          : 'The parameter type of <code>==</code> matters: <b>${_esc(_label(fastest.variant))}</b> is fastest at '
              '${_s(total(fastest))} and <b>${_esc(_label(slowest.variant))}</b> slowest at ${_s(total(slowest))} '
              '(${_pct(spread)} slower) at N=$n.');
    }

    for (var e in _experiments) {
      var withIt = find(e[0]), without = find(e[1]);
      if (withIt == null || without == null) continue;
      findings.add(_gapFinding(e[2], withIt, without, n));
    }
    return findings;
  }

  /// Describes how much [withIt] costs over [without] at [n], and which phase the difference is in.
  String _gapFinding(String what, _VariantAnalysis withIt, _VariantAnalysis without, int n) {
    var a = withIt.runAt(n)!, b = without.runAt(n)!;
    var gap = a.totalSeconds - b.totalSeconds;
    var kA = _fitExponent(withIt.ns, withIt.totals), kB = _fitExponent(without.ns, without.totals);
    var scaling = kA == null || kB == null
        ? ''
        : ' Scaling goes from N<sup>${kB.toStringAsFixed(2)}</sup> to N<sup>${kA.toStringAsFixed(2)}</sup>.';
    var compared = '(${_esc(_label(withIt.variant))} at ${_s(a.totalSeconds)} vs. '
        '${_esc(_label(without.variant))} at ${_s(b.totalSeconds)})';
    if (gap.abs() < 0.05 * b.totalSeconds) {
      return '$what makes little difference at N=$n $compared.$scaling';
    }
    double diff(String phase) => ((a.phases[phase] ?? 0) - (b.phases[phase] ?? 0)) * gap.sign;
    var names = {...a.phases.keys, ...b.phases.keys};
    var tops = names.where((p) => !p.contains(' > ')).toList()..sort((x, y) => diff(y).compareTo(diff(x)));
    var where = '';
    if (tops.isNotEmpty && diff(tops.first) > 0) {
      var top = tops.first;
      var subs = names.where((p) => p.startsWith('$top > ')).toList()..sort((x, y) => diff(y).compareTo(diff(x)));
      var sub = subs.isNotEmpty && diff(subs.first) > 0.5 * diff(top) ? subs.first : null;
      where = ' The biggest difference is in <b>${_esc(top)}</b> (${_s(diff(top))}, ${_pct(diff(top) / gap.abs())} of it)'
          '${sub == null ? '' : ', mostly <b>${_esc(sub.substring(top.length + 3))}</b> (${_s(diff(sub))})'}.';
    }
    return '$what ${gap > 0 ? 'costs' : 'saves'} <b>${_s(gap.abs())}</b> '
        '(${_ratio(gap > 0 ? a.totalSeconds / b.totalSeconds : b.totalSeconds / a.totalSeconds)}) at N=$n $compared.$where$scaling';
  }

  String _rankingTable(int n, List<_VariantAnalysis> group, _VariantAnalysis? baseline) {
    var sorted = group.toList()..sort((a, b) => a.runAt(n)!.totalSeconds.compareTo(b.runAt(n)!.totalSeconds));
    var html = StringBuffer('<table><thead><tr><th>Variant</th><th>Compile time at N=$n</th>'
        '${baseline == null ? '' : '<th>vs. ${_esc(_label(baseline.variant))}</th>'}<th>Scaling</th></tr></thead><tbody>');
    for (var a in sorted) {
      var t = a.runAt(n)!.totalSeconds;
      var k = _fitExponent(a.ns, a.totals);
      html.write('<tr><td><span class="swatch" style="background:${_variantColors[a.variant] ?? '#999'}"></span>'
          '${_esc(_label(a.variant))} <span class="dim">(${_esc(a.variant)})</span></td><td>${_s(t)}</td>'
          '${baseline == null ? '' : '<td>${_ratio(t / baseline.runAt(n)!.totalSeconds)}</td>'}'
          '<td>${k == null ? '&ndash;' : 'N<sup>${k.toStringAsFixed(2)}</sup> <span class="dim">${_describe(k)}</span>'}</td></tr>');
    }
    return '$html</tbody></table>';
  }

  String _totalsTable(List<_VariantAnalysis> group, _VariantAnalysis? baseline) {
    var html = StringBuffer('<table class="compact"><thead><tr><th>N</th>');
    for (var a in group) {
      html.write('<th title="${_esc(_label(a.variant))}">${_esc(a.variant)}</th>');
    }
    html.write('</tr></thead><tbody>');
    for (var n in {for (var a in group) ...a.ns}.toList()..sort()) {
      html.write('<tr><td>$n</td>');
      var base = baseline?.runAt(n)?.totalSeconds;
      for (var a in group) {
        var t = a.runAt(n)?.totalSeconds;
        html.write(t == null
            ? '<td>&ndash;</td>'
            : '<td>${_s(t)}${base != null && a != baseline ? '<br><span class="dim">${_ratio(t / base)}</span>' : ''}</td>');
      }
      html.write('</tr>');
    }
    var note = baseline == null
        ? ''
        : '<p class="dim">Multipliers are relative to ${_esc(_label(baseline.variant))}. '
            'Column names are the <code>VARIANT</code> values; the ranking table above has their descriptions.</p>';
    return '$html</tbody></table>$note';
  }

  String _phaseComparisonTable(int n, List<_VariantAnalysis> group) {
    var runs = [for (var a in group) a.runAt(n)!];
    var names = {for (var r in runs) ...r.phases.keys};
    double maxOf(String p) => runs.map((r) => r.phases[p] ?? 0).reduce(math.max);
    var html = StringBuffer('<table class="compact"><thead><tr><th>Phase</th>');
    for (var a in group) {
      html.write('<th title="${_esc(_label(a.variant))}">${_esc(a.variant)}</th>');
    }
    html.write('</tr></thead><tbody>');
    var tops = names.where((p) => !p.contains(' > ')).toList()..sort((a, b) => maxOf(b).compareTo(maxOf(a)));
    for (var top in tops) {
      var subs = names.where((p) => p.startsWith('$top > ') && maxOf(p) >= 0.05).toList()
        ..sort((a, b) => maxOf(b).compareTo(maxOf(a)));
      for (var p in [top, ...subs]) {
        html.write('<tr class="${p == top ? 'top' : 'sub'}"><td>${_esc(p == top ? p : p.substring(top.length + 3))}</td>');
        for (var r in runs) {
          html.write('<td>${_s(r.phases[p] ?? 0)}</td>');
        }
        html.write('</tr>');
      }
    }
    return '$html</tbody></table>';
  }
}

class _VariantAnalysis {
  _VariantAnalysis(this.variant, this.runs)
      : ns = runs.map((r) => r.n).toList(),
        totals = runs.map((r) => r.totalSeconds).toList() {
    var names = <String>{for (var r in runs) ...r.phases.keys};
    phases = [for (var name in names) _Phase(name, [for (var r in runs) r.phases[name] ?? 0], ns, totals)];
    topLevel = phases.where((p) => p.isTopLevel).toList()..sort((a, b) => b.last.compareTo(a.last));
  }

  final String variant;
  final List<CompileRun> runs;
  final List<int> ns;
  final List<double> totals;
  late final List<_Phase> phases;
  late final List<_Phase> topLevel;

  CompileRun? runAt(int n) {
    for (var r in runs) {
      if (r.n == n) return r;
    }
    return null;
  }

  _Series totalSeries() => _Series(_label(variant), _points(totals), color: _variantColors[variant]);

  String html() {
    var html = StringBuffer('<ul class="findings">');
    for (var finding in _findings()) {
      html.writeln('<li>$finding</li>');
    }
    html
      ..writeln('</ul>')
      ..writeln('<h3>Total compile time</h3>')
      ..writeln(_chart([
        _Series('dart2js total compile-time', _points(totals)),
        _Series('Wall clock (includes VM startup)', _points(runs.map((r) => r.wallSeconds).toList())),
      ]))
      ..writeln('<h3>Where the time goes</h3>')
      ..writeln('<p>Top-level dart2js phases stacked, so the top edge is the total compile time.</p>')
      ..writeln(_chart(_stackSeries(), stacked: true))
      ..writeln('<h3>Scaling on a log-log scale</h3>')
      ..writeln('<p>On log-log axes a phase growing as N<sup>k</sup> is a straight line with slope k. '
          'Lines steeper than the total are taking a growing share of compile time.</p>')
      ..writeln(_chart([
        _Series('Total', _points(totals)),
        for (var p in topLevel.take(7)) _Series(p.name, _points(p.values)),
      ], log: true))
      ..writeln('<h3>Largest sub-phases</h3>')
      ..writeln(_chart([
        for (var p in (phases.where((p) => !p.isTopLevel).toList()..sort((a, b) => b.last.compareTo(a.last))).take(8))
          _Series(p.name, _points(p.values)),
      ]))
      ..writeln('<h3>Phase breakdown</h3>')
      ..writeln('<p>"Share of increase" is how much of the total slowdown from N=${ns.first} to N=${ns.last} '
          'the phase accounts for. "Scaling" is the exponent k of a power-law fit t &asymp; a&middot;N<sup>k</sup> '
          'over runs with N &ge; ${_fitFloor(ns)} (1 is linear, 2 is quadratic). Sub-phases under 5 ms are hidden.</p>')
      ..writeln(_phaseTable())
      ..writeln('<h3>Compiler work counters</h3>')
      ..writeln('<p>Counts dart2js prints with <code>-v</code>. If these grow linearly while time grows faster, '
          'the cost per item is rising with program size.</p>')
      ..writeln(_counterTable())
      ..writeln('<h3>Raw data</h3>')
      ..writeln(_rawTable());
    return html.toString();
  }

  List<String> _findings() {
    var findings = <String>[];
    var totalK = _fitExponent(ns, totals);
    findings.add('Compile time went from <b>${_s(totals.first)}</b> at N=${ns.first} to '
        '<b>${_s(totals.last)}</b> at N=${ns.last}, ${_ratio(totals.last / totals.first)} slower for '
        '${_ratio(ns.last / ns.first)} more classes. '
        '${totalK == null ? '' : 'From N=${_fitFloor(ns)} up it scales as roughly <b>N<sup>${totalK.toStringAsFixed(2)}</sup></b> '
            '(${_describe(totalK)}).'}');

    var contributors = (topLevel.toList()..sort((a, b) => b.delta.compareTo(a.delta))).take(3).toList();
    findings.add('Most of the extra time comes from ${_joinAnd([
          for (var p in contributors)
            '<b>${_esc(p.name)}</b> (+${_s(p.delta)}, ${_pct(p.growthShare)} of the increase)'
        ])}.');

    var growers = phases
        .where((p) => p.exponent != null && p.shareLast >= 0.05)
        .toList()
      ..sort((a, b) => b.exponent!.compareTo(a.exponent!));
    if (growers.isNotEmpty) {
      findings.add('Fastest-growing phases that take at least 5% of the time at N=${ns.last}: ${_joinAnd([
            for (var p in growers.take(3))
              '<b>${_esc(p.name)}</b> (N<sup>${p.exponent!.toStringAsFixed(2)}</sup>, ${_pct(p.shareLast)} of the time)'
          ])}.${totalK != null && growers.first.exponent! > totalK + 0.1 ? ' These grow faster than the total, so they will dominate even more at larger N.' : ''}');
    }

    var baseIndex = ns.indexWhere((n) => n >= _fitMinN);
    if (baseIndex >= 0 && baseIndex < ns.length - 1) {
      double share(_Phase p, int i) => totals[i] == 0 ? 0 : p.values[i] / totals[i];
      var byShift = topLevel.toList()
        ..sort((a, b) => (share(b, ns.length - 1) - share(b, baseIndex)).compareTo(share(a, ns.length - 1) - share(a, baseIndex)));
      var gainer = byShift.first, loser = byShift.last;
      findings.add('Between N=${ns[baseIndex]} and N=${ns.last}, <b>${_esc(gainer.name)}</b> grew from '
          '${_pct(share(gainer, baseIndex))} to ${_pct(share(gainer, ns.length - 1))} of compile time, while '
          '<b>${_esc(loser.name)}</b> fell from ${_pct(share(loser, baseIndex))} to ${_pct(share(loser, ns.length - 1))}.');
    }

    var counterKs = <String, double>{};
    for (var name in _counterPatterns.keys) {
      var values = [for (var r in runs) (r.counters[name] ?? 0).toDouble()];
      var k = _fitExponent(ns, values, minValue: 1);
      if (k != null) counterKs[name] = k;
    }
    var inferred = runs.last.counters['Inferred types'];
    if (counterKs.isNotEmpty && totalK != null) {
      var maxCounterK = counterKs.values.reduce(math.max);
      var perClass = inferred == null ? '' : ' (about ${(inferred / ns.last).toStringAsFixed(0)} inferred types per class)';
      findings.add(totalK > maxCounterK + 0.15
          ? 'The amount of work dart2js reports grows at most as N<sup>${maxCounterK.toStringAsFixed(2)}</sup>$perClass, '
              'but time grows as N<sup>${totalK.toStringAsFixed(2)}</sup>. The cost per element is rising with program size, '
              'which points at non-linear behavior inside the phases above rather than just more code to compile.'
          : 'The amount of work dart2js reports grows as roughly N<sup>${maxCounterK.toStringAsFixed(2)}</sup>$perClass, '
              'in line with compile time. The slowdown is mostly explained by there being more code, not by a per-item cost that grows.');
    }

    var overhead = [for (var r in runs) if (r.compilerSeconds != null) r.wallSeconds - r.compilerSeconds!];
    if (overhead.isNotEmpty) {
      var avg = overhead.reduce((a, b) => a + b) / overhead.length;
      findings.add('Outside the compiler itself (VM startup, <code>make</code>), each compile costs a roughly fixed '
          '${_s(avg)} of wall-clock time on average.');
    }
    return findings;
  }

  List<_Series> _stackSeries() {
    var shown = topLevel.where((p) => p.shareLast >= 0.01).take(9).toList();
    var series = [for (var p in shown) _Series(p.name, _points(p.values))];
    var other = [
      for (var i = 0; i < runs.length; i++)
        math.max(0.0, totals[i] - shown.fold<double>(0, (sum, p) => sum + p.values[i]))
    ];
    if (other.any((v) => v > 0.0005)) series.add(_Series('Other / unaccounted', _points(other)));
    return series;
  }

  String _phaseTable() {
    var html = StringBuffer('<table><thead><tr><th>Phase</th><th>N=${ns.first}</th><th>N=${ns.last}</th>'
        '<th>Share at N=${ns.last}</th><th>Share of increase</th><th>Scaling</th></tr></thead><tbody>');
    for (var top in topLevel.toList()..sort((a, b) => b.delta.compareTo(a.delta))) {
      html.write(_phaseRow(top, top.name, 'top'));
      var subs = phases.where((p) => !p.isTopLevel && p.parent == top.name && p.last >= 0.005).toList()
        ..sort((a, b) => b.delta.compareTo(a.delta));
      for (var sub in subs) {
        html.write(_phaseRow(sub, sub.name.substring(top.name.length + 3), 'sub'));
      }
    }
    return '$html</tbody></table>';
  }

  String _phaseRow(_Phase p, String label, String cls) => '<tr class="$cls"><td>${_esc(label)}</td>'
      '<td>${_s(p.first)}</td><td>${_s(p.last)}</td><td>${_pct(p.shareLast)}</td><td>${_pct(p.growthShare)}</td>'
      '<td>${p.exponent == null ? '&ndash;' : 'N<sup>${p.exponent!.toStringAsFixed(2)}</sup> <span class="dim">${_describe(p.exponent!)}</span>'}</td></tr>';

  String _counterTable() {
    var html = StringBuffer('<table><thead><tr><th>Counter</th><th>N=${ns.first}</th><th>N=${ns.last}</th>'
        '<th>Per class at N=${ns.last}</th><th>Scaling</th></tr></thead><tbody>');
    for (var name in _counterPatterns.keys) {
      var values = [for (var r in runs) (r.counters[name] ?? 0).toDouble()];
      if (values.every((v) => v == 0)) continue;
      var k = _fitExponent(ns, values, minValue: 1);
      html.write('<tr><td>${_esc(name)}</td><td>${_int(values.first)}</td><td>${_int(values.last)}</td>'
          '<td>${(values.last / ns.last).toStringAsFixed(1)}</td>'
          '<td>${k == null ? '&ndash;' : 'N<sup>${k.toStringAsFixed(2)}</sup>'}</td></tr>');
    }
    return '$html</tbody></table>';
  }

  String _rawTable() {
    var html = StringBuffer('<table><thead><tr><th>N</th><th>Compile-time</th><th>Wall clock</th>');
    for (var name in _counterPatterns.keys) {
      html.write('<th>${_esc(name)}</th>');
    }
    html.write('</tr></thead><tbody>');
    for (var r in runs) {
      html.write('<tr><td>${r.n}</td><td>${_s(r.totalSeconds)}</td><td>${_s(r.wallSeconds)}</td>');
      for (var name in _counterPatterns.keys) {
        html.write('<td>${r.counters.containsKey(name) ? _int(r.counters[name]!.toDouble()) : '&ndash;'}</td>');
      }
      html.write('</tr>');
    }
    return '$html</tbody></table>';
  }

  List<math.Point<double>> _points(List<double> values) =>
      [for (var i = 0; i < ns.length; i++) math.Point(ns[i].toDouble(), values[i])];
}

double? _fitExponent(List<int> ns, List<double> values, {double minValue = _fitMinSeconds}) {
  var floor = _fitFloor(ns);
  var xs = <double>[], ys = <double>[];
  for (var i = 0; i < ns.length; i++) {
    if (ns[i] >= floor && values[i] >= minValue) {
      xs.add(math.log(ns[i]));
      ys.add(math.log(values[i]));
    }
  }
  if (xs.length < 3) return null;
  var mx = xs.reduce((a, b) => a + b) / xs.length, my = ys.reduce((a, b) => a + b) / ys.length;
  var num = 0.0, den = 0.0;
  for (var i = 0; i < xs.length; i++) {
    num += (xs[i] - mx) * (ys[i] - my);
    den += (xs[i] - mx) * (xs[i] - mx);
  }
  return den == 0 ? null : num / den;
}

String _chart(List<_Series> series, {bool log = false, bool stacked = false}) {
  const w = 900.0, h = 400.0, ml = 64.0, mr = 260.0, mt = 16.0, mb = 52.0;
  const pw = w - ml - mr, ph = h - mt - mb;

  var bottoms = <List<double>>[], tops = <List<double>>[];
  var running = List<double>.filled(series.isEmpty ? 0 : series.first.points.length, 0);
  for (var s in series) {
    var base = stacked ? running : List<double>.filled(s.points.length, 0);
    var top = [for (var i = 0; i < s.points.length; i++) base[i] + s.points[i].y];
    bottoms.add(List.of(base));
    tops.add(top);
    if (stacked) running = top;
  }

  var xsAll = [for (var s in series) for (var p in s.points) p.x].where((x) => !log || x > 0).toList();
  var ysAll = [for (var t in tops) ...t].where((y) => !log || y > 0).toList();
  if (xsAll.isEmpty || ysAll.isEmpty) return '<p>No data.</p>';

  late double x0, x1, y0, y1;
  late List<double> xTicks, yTicks;
  if (log) {
    x0 = math.pow(10, (math.log(xsAll.reduce(math.min)) / math.ln10).floor()).toDouble();
    x1 = math.pow(10, (math.log(xsAll.reduce(math.max)) / math.ln10).ceil()).toDouble();
    y0 = math.pow(10, (math.log(ysAll.reduce(math.min)) / math.ln10).floor()).toDouble();
    y1 = math.pow(10, (math.log(ysAll.reduce(math.max)) / math.ln10).ceil()).toDouble();
    xTicks = _logTicks(x0, x1);
    yTicks = _logTicks(y0, y1);
  } else {
    x0 = 0;
    y0 = 0;
    xTicks = _linearTicks(xsAll.reduce(math.max));
    yTicks = _linearTicks(ysAll.reduce(math.max));
    x1 = xTicks.last;
    y1 = yTicks.last;
  }
  double sx(double v) => log
      ? ml + (math.log(v) - math.log(x0)) / (math.log(x1) - math.log(x0)) * pw
      : ml + (v - x0) / (x1 - x0) * pw;
  double sy(double v) => log
      ? mt + ph - (math.log(v) - math.log(y0)) / (math.log(y1) - math.log(y0)) * ph
      : mt + ph - (v - y0) / (y1 - y0) * ph;
  String f(double v) => v.toStringAsFixed(1);
  String color(int i) => series[i].color ?? _palette[i % _palette.length];

  var svg = StringBuffer('<svg viewBox="0 0 $w $h" class="chart" role="img">');
  for (var t in yTicks) {
    svg.write('<line x1="$ml" x2="${ml + pw}" y1="${f(sy(t))}" y2="${f(sy(t))}" class="grid"/>'
        '<text x="${ml - 6}" y="${f(sy(t) + 4)}" text-anchor="end">${_tick(t)}</text>');
  }
  for (var t in xTicks) {
    svg.write('<line x1="${f(sx(t))}" x2="${f(sx(t))}" y1="$mt" y2="${mt + ph}" class="grid"/>'
        '<text x="${f(sx(t))}" y="${mt + ph + 16}" text-anchor="middle">${_tick(t)}</text>');
  }
  svg
    ..write('<text x="${ml + pw / 2}" y="${h - 10}" text-anchor="middle" class="label">'
        'N (generated classes)${log ? ', log scale' : ''}</text>')
    ..write('<text transform="translate(16 ${mt + ph / 2}) rotate(-90)" text-anchor="middle" class="label">'
        'seconds${log ? ', log scale' : ''}</text>');

  for (var i = 0; i < series.length; i++) {
    var name = _esc(series[i].name);
    var pts = series[i].points;
    if (stacked) {
      var poly = [
        for (var j = 0; j < pts.length; j++) '${f(sx(pts[j].x))},${f(sy(tops[i][j]))}',
        for (var j = pts.length - 1; j >= 0; j--) '${f(sx(pts[j].x))},${f(sy(bottoms[i][j]))}',
      ].join(' ');
      svg.write('<polygon points="$poly" fill="${color(i)}" fill-opacity="0.85" stroke="#fff" stroke-width="0.5">'
          '<title>$name</title></polygon>');
    } else {
      var visible = [for (var p in pts) if (!log || (p.x > 0 && p.y > 0)) p];
      svg.write('<polyline fill="none" stroke="${color(i)}" stroke-width="2" '
          'points="${visible.map((p) => '${f(sx(p.x))},${f(sy(p.y))}').join(' ')}"/>');
      for (var p in visible) {
        svg.write('<circle cx="${f(sx(p.x))}" cy="${f(sy(p.y))}" r="3" fill="${color(i)}">'
            '<title>$name, N=${p.x.toInt()}: ${_s(p.y)}</title></circle>');
      }
    }
  }

  var legend = stacked ? List.generate(series.length, (i) => series.length - 1 - i) : List.generate(series.length, (i) => i);
  for (var row = 0; row < legend.length; row++) {
    var i = legend[row];
    var y = mt + 6 + row * 20;
    svg.write('<rect x="${ml + pw + 16}" y="$y" width="12" height="12" fill="${color(i)}"/>'
        '<text x="${ml + pw + 34}" y="${y + 10}">${_esc(series[i].name)}</text>');
  }
  return '$svg</svg>';
}

List<double> _linearTicks(double max) {
  if (max <= 0) return [0, 1];
  var raw = max / 5;
  var magnitude = math.pow(10, (math.log(raw) / math.ln10).floor()).toDouble();
  var fraction = raw / magnitude;
  var step = (fraction <= 1 ? 1 : fraction <= 2 ? 2 : fraction <= 5 ? 5 : 10) * magnitude;
  var count = (max / step).ceil();
  return [for (var i = 0; i <= count; i++) i * step];
}

List<double> _logTicks(double lo, double hi) {
  var ticks = <double>[];
  for (var e = (math.log(lo) / math.ln10).round(); e <= (math.log(hi) / math.ln10).round(); e++) {
    for (var m in const [1, 2, 5]) {
      var v = m * math.pow(10, e).toDouble();
      if (v >= lo * 0.999 && v <= hi * 1.001) ticks.add(v);
    }
  }
  return ticks;
}

String _tick(double v) {
  if (v >= 1000 && v % 1000 == 0) return '${(v / 1000).toStringAsFixed(0)}k';
  if (v == v.roundToDouble()) return v.toStringAsFixed(0);
  return v.toStringAsPrecision(2).replaceFirst(RegExp(r'0+$'), '');
}

String _describe(double k) {
  if (k < 0.8) return 'sublinear';
  if (k < 1.2) return 'about linear';
  if (k < 1.7) return 'superlinear';
  if (k < 2.3) return 'about quadratic';
  return 'worse than quadratic';
}

String _s(double seconds) {
  if (seconds >= 10) return '${seconds.toStringAsFixed(1)}s';
  if (seconds >= 1) return '${seconds.toStringAsFixed(2)}s';
  return '${(seconds * 1000).toStringAsFixed(0)}ms';
}

String _pct(double fraction) => '${(fraction * 100).toStringAsFixed(fraction.abs() < 0.1 ? 1 : 0)}%';

String _ratio(double r) => '${r >= 10 ? r.toStringAsFixed(0) : r.toStringAsFixed(1)}&times;';

String _int(double v) => v.toInt().toString().replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (_) => ',');

String _joinAnd(List<String> items) {
  if (items.length <= 1) return items.join();
  return '${items.sublist(0, items.length - 1).join(', ')} and ${items.last}';
}

String _esc(String s) => const HtmlEscape().convert(s);

const _css = '''
body { font: 15px/1.5 -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif; max-width: 960px; margin: 2em auto; padding: 0 1em; color: #222; }
h1 { font-size: 1.5em; } h2 { font-size: 1.2em; margin-top: 2em; border-bottom: 1px solid #ddd; padding-bottom: .2em; }
h3 { font-size: 1.05em; margin-top: 1.6em; }
details > summary { cursor: pointer; list-style: none; } details > summary h2 { display: inline-block; }
details > summary::before { content: "\\25B8  "; color: #999; } details[open] > summary::before { content: "\\25BE  "; }
.meta, .dim { color: #777; font-size: .9em; }
.swatch { display: inline-block; width: 10px; height: 10px; margin-right: 6px; border-radius: 2px; }
.findings li { margin-bottom: .6em; }
.chart { width: 100%; height: auto; font-size: 12px; }
.chart .grid { stroke: #eee; } .chart .label { fill: #555; font-size: 13px; }
table { border-collapse: collapse; width: 100%; font-size: .9em; }
th, td { text-align: right; padding: 4px 8px; border-bottom: 1px solid #eee; }
th:first-child, td:first-child { text-align: left; }
table.compact { font-size: .8em; } table.compact th, table.compact td { padding: 3px 4px; }
tr.top td { font-weight: 600; background: #fafafa; } tr.sub td:first-child { padding-left: 2em; color: #555; }
code { background: #f3f3f3; padding: 0 3px; border-radius: 3px; }
''';
