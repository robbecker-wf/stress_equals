# Frugal Dart codegen: patterns likely to slow dart2js

> **Later findings.** This review was written before the dart2js source investigation. That investigation since confirmed the "shared member name read through many receiver types" mechanism described below, which this review rated medium confidence. The fix is in `patches/dart2js-quadratic-fixes.patch` and [robbecker-wf/sdk#1](https://github.com/robbecker-wf/sdk/pull/1).
>
> The benchmark also shows that recommendation 1 (private names in per-file libraries) only partly helps. At N=4000, one library per class with a public `val` takes 14.9s and with a private `_val` takes 7.6s. Declaring the field once on a base class takes 4.6s. See the `libs`, `private` and `basefield` variants in `bench_results/20261002-050702/report.html`.

## Summary

Every generated struct gets about 10 public members whose names are shared by all structs, and 4 more public members per field. The generated `read`, `write`, `validate`, `==` and `hashCode` call those shared names on many different static receiver types: `this`, the type of each nested struct, and the type of each field. That is the shape most likely to make `resolution.dynamicUse` grow as types × call-site constraints. A second problem affects the whole program: the runtime's `FMethod` calls `Function.apply`. The `getFieldValue`/`setFieldValue` switches are probably *not* a big compile cost, because nothing in Frugal's own runtime calls them.

**Test this first.** Your benchmark may already have the same mechanism. Every `ZBase_i` has a field with the same name, `val`, and reads it through receivers of N different types: `other.val` after `other is ZBase_i`, and `this.val` in `hashCode` and `toString`. That gives about N distinct (selector `val`, receiver type) pairs, each checked against N `val` members, which is roughly N² work. It would also explain why removing `==` only saved about 10%. Renaming the field per class (`val_$i`) should confirm or rule this out quickly; see variant C below. This explanation comes from my memory of dart2js's world builder (`_instanceMembersByName`, `_processSet`, the `canHit` checks). I did not re-read the 3.13.5 source, so treat it as **medium** confidence.

## Where things live

- Clone: `/tmp/frugal-review/frugal` (branch `master`).
- **Generator:** `compiler/generator/dartlang/generator.go` (a single file of about 2,450 lines): [link](https://github.com/Workiva/frugal/blob/master/compiler/generator/dartlang/generator.go)
- **Checked-in generated output** (golden files used by `compiler/compiler_test.go`):
  - `compiler/testdata/expected/dart/{variety,actual_base,...}` is the default mode.
  - `dart.int64`, `dart.nullunset` and `dart.nullunsetsafe` are the option variants. `nullunset` uses plain public fields instead of private fields with getters and setters.
  - Good samples: [`f_thing.dart`](https://github.com/Workiva/frugal/blob/master/compiler/testdata/expected/dart/actual_base/f_thing.dart) is small (191 lines, 2 fields). [`f_event_wrapper.dart`](https://github.com/Workiva/frugal/blob/master/compiler/testdata/expected/dart/variety/f_event_wrapper.dart) is 1,247 lines for 19 fields, with 26 `as` casts and 24 `DeepCollectionEquality` uses.
- **Runtime:**
  - `lib/dart/lib/src/frugal/f_middleware.dart` has `FMethod`, which uses `Function.apply` (line 55) and `debugMiddleware`, which uses `runtimeType` (lines 80 and 88).
  - `lib/dart/lib/src/frugal/f_generated.dart` has `FGeneratedArgsResultBase`.
  - `TBase` comes from `package:thrift` on pub.workiva.org. I read version 0.0.76 from `~/.pub-cache`. It declares `read`, `write`, `isSet`, `getFieldValue` and `setFieldValue`.

## A representative generated struct (trimmed `f_thing.dart`)

```dart
class thing implements thrift.TBase {
  static final thrift.TStruct _STRUCT_DESC = thrift.TStruct('thing');            // lazy static
  static final thrift.TField _AN_ID_FIELD_DESC = thrift.TField('an_id', thrift.TType.I32, 1);
  int? _an_id = 0;  static const int AN_ID = 1;
  bool __isset_an_id = false;
  int? get an_id => this._an_id;
  set an_id(int? an_id) { this._an_id = an_id; this.__isset_an_id = true; }
  bool isSetAn_id() => this.__isset_an_id;
  unsetAn_id() { this.__isset_an_id = false; }                                   // implicit dynamic return
  @override getFieldValue(int fieldID) { switch (fieldID) { case AN_ID: return this.an_id; ... default: throw ArgumentError(...); } }
  @override setFieldValue(int fieldID, Object? value) { switch (fieldID) { case AN_ID: if (value == null) { unsetAn_id(); } else { this.an_id = value as int?; } break; ... } }
  @override bool isSet(int fieldID) { switch (fieldID) { case AN_ID: return isSetAn_id(); } return getFieldValue(fieldID) != null; }
  @override read(thrift.TProtocol iprot) { iprot.readStructBegin(); for (...) { switch (field.id) { case AN_ID: if (field.type == thrift.TType.I32) { this.an_id = iprot.readI32(); ... } else { thrift.TProtocolUtil.skip(iprot, field.type); } break; ... } iprot.readFieldEnd(); } iprot.readStructEnd(); validate(); }
  @override write(thrift.TProtocol oprot) { validate(); oprot.writeStructBegin(_STRUCT_DESC); final elem0 = an_id; oprot.writeFieldBegin(_AN_ID_FIELD_DESC); oprot.writeI32(elem0); ... }
  @override String toString() { StringBuffer ret = StringBuffer('thing('); ret.write('an_id:'); ret.write(this.an_id); ... }
  @override bool operator ==(Object o) { if (o is thing) { return this.an_id == o.an_id && this.a_string == o.a_string; } return false; }
  @override int get hashCode { var value = 17; value = (value * 31) ^ this.an_id.hashCode; ... }
  thing clone({int? an_id, String? a_string}) => thing()..an_id = an_id ?? this.an_id ..a_string = ...;
  validate() { /* required-field null checks; enum VALID_VALUES checks */ }
}
```

Fields of nested structs and containers expand into nested loops inside `read` and `write`. Each nested struct gets its own call, for example `final elem8 = t_variety.Event(); elem8.read(iprot);` and `elem85.write(oprot);`. Collection fields use `DeepCollectionEquality().equals(...)` and `.hash(...)`, creating a new `DeepCollectionEquality` object on every call.

## What each IDL construct generates

- **Struct:** `implements thrift.TBase` and gets everything shown above.
- **Exception:** the same, but `extends Error implements thrift.TBase`.
- **Union:** the same as a struct, plus a `validate()` that calls `isSetX()` for every field.
- **Enum:** by default, a class holding `static const int`s, plus `static final` `VALID_VALUES` (`Set.from([...])`) and `VALUES_TO_NAMES`. These are lazily initialized statics. With the `use_enums` option you get a real `enum` plus top-level `serializeX`/`deserializeX` switch functions.
- **Service method:** two classes, `X_args` (`write` and `validate`) and `X_result` (`read` and `validate`), both extending `FGeneratedArgsResultBase`. The client gets:
  - one `late final _x_fmethod = frugal.FMethod(this._x, ...)` per method, which is a tear-off;
  - one public method that calls `_x_fmethod([ctx, a, b]).then((value) => value as T)`, which adds a closure per method;
  - one private async `_x`.
- **Scope:** a publisher with a `FMethod(this._publishX, ...)` per operation. A subscriber that wraps user callbacks typed as `dynamic onX(FContext, T)` in `FMethod`.

So the number of classes is roughly structs + exceptions + unions + 2 × service methods. All of them implement `read`, `write` and `validate`.

## Pattern catalog

Generator line numbers refer to `compiler/generator/dartlang/generator.go` on `master`.

| # | Pattern | Generator location | Cost per struct | Why it may hurt dart2js | Confidence |
|---|---|---|---|---|---|
| 1 | Shared public selectors implemented by every class: `read`, `write`, `validate`, `isSet`, `getFieldValue`, `setFieldValue`, `toString`, `==`, `hashCode`, `clone` | struct body 784–894; `extends`/`implements` 717–727 | about 10 members, the same names in every class | Each name's member list grows to about S (number of structs). Every new receiver constraint registered for that name is checked against the whole list. | high (that the pattern exists); medium (exact dart2js mechanism) |
| 2 | Shared selectors called on many distinct receiver types: `validate()` on `this` in every `read`/`write`; `elemK.read(iprot)` / `elemK.write(oprot)` per nested-struct field; `this.f == o.f` and `this.f.hashCode` per field | read 1077–1107 and 1109–1219; write 1221–1295 and 1297–1390; equals 1460–1504; hashCode 1506–1527 | O(fields) call sites, each typed differently | Gives about S·k distinct (selector, constraint) pairs × S implementations, so roughly O(S²·k) checks. This is the same shape as the `val` hypothesis in the summary. | medium |
| 3 | Public per-field members: getter, setter, `isSetX()`, `unsetX()`. In `nullunset` mode, plain public fields. Internal code goes through them (`final elem0 = an_id;`, `o.an_id`, `isSetX()` in `write` and union `validate`) | 952–1003; uses in write 1265 and 1283, equals, union validate 1580–1590 | 4 members per field | Common field names (`id`, `name`, `type`, `value`…) collide across structs, and every struct calls them through `this` or `o`. That is the `val` pattern again. Private `_x` backing fields don't collide, because each struct file is its own library. | medium |
| 4 | `getFieldValue` / `setFieldValue` / `isSet(int)` switches, with an `as T?` cast per field, including generic casts like `as List<Event>?` and `as Map<int, Event>?` | 1005–1073 | 3 methods, each O(fields) long | Nothing in Frugal's runtime calls these, so they are tree-shaken unless app code calls them on a `TBase`. If any call site exists, all S implementations become live, along with RTI (runtime type information) for every generic cast target. Implicit `dynamic` return type. | medium (low cost if unused) |
| 5 | Large `read`/`write`: a switch with deeply nested container loops and `elemN` temporaries; `TProtocolUtil.skip` per case | 1077–1390 | about 10–15 lines per field, more for containers | Feeds the SSA builder, load elimination and GVN, which grow with function size × number of functions. Many call sites on `TProtocol` (the receiver constraint is the same everywhere, so they are deduplicated). | high (size); medium (superlinear phases) |
| 6 | Large `toString`, with `VALUES_TO_NAMES[...]!` lookups for enum fields | 1392–1458 | about 4 lines per field (73 `ret.write` calls in `TestingDefaults`) | Always live (`StringBuffer.write(Object?)` and string interpolation), so never tree-shaken. Mostly an output-size cost. | high (size) |
| 7 | `DeepCollectionEquality()` created per field, per call, in `==` and `hashCode` | 1497–1504, 1520–1527 | 2 allocations per collection field | Only a few call sites inside package:collection, but they are `Object?` receivers that match every class. Also a runtime allocation cost. | low (compile); medium (runtime) |
| 8 | `static final` descriptors (`TStruct`, one `TField` per field), plus enum `VALID_VALUES`/`VALUES_TO_NAMES` as `static final` | 800–810; enum 593–615 | 1 + fields lazy statics | Each lazy static needs a getter and an initializer in the output, plus extra static uses. They can't be `const` because thrift's `TField`/`TStruct` constructors aren't `const`. | high (size); low (compile) |
| 9 | `FMethod` calling `Function.apply(f, args)` on a tear-off per service and scope method | runtime `f_middleware.dart:38–63`; generator 2019, 1766, 1897 | 1 tear-off, 1 closure and 1 `late final` per method | Using `Function.apply` anywhere makes dart2js keep apply-compatible metadata and stubs for closures and tear-offs program-wide, and calls go through `List<Object?>`. | medium |
| 10 | `debugMiddleware` using `obj.runtimeType.toString()` | `f_middleware.dart:80,88` | only if reachable | Using `runtimeType` on `Object` widens which classes need runtime type information. | low to medium (opt-in only) |
| 11 | Implicit `dynamic` return types on `read`, `write`, `validate`, `unsetX` and `getFieldValue` | 1008, 1024, 1564, 986–998 | about 4 + fields members | More imprecise types for global inference. Callers' results are `dynamic`. | low |
| 12 | `clone({...})` with a named parameter per field | 1529–1560 | 1 method with many named parameters | Tree-shaken if unused. Each distinct set of named arguments used at call sites adds a call structure and stubs. | low |
| 13 | `.then((value) => value as T)`, a non-null cast while the method returns `Future<T?>` | 2075 | 1 closure per method | Minor for compile. Also looks like a latent bug: a null `success` would throw, although `_x` already throws in that case. | low |

## Prioritized recommendations for the generator

**1. Stop routing internal calls through shared public selectors.**
Within the generated file, call private backing fields and a private validator instead of the public members (patterns 2 and 3).

```dart
// before
write(thrift.TProtocol oprot) { validate(); final elem0 = an_id; ... if (isSetEventsDefault() && elem84 != null) ... }
bool operator ==(Object o) { if (o is thing) { return this.an_id == o.an_id && ...; } return false; }
int get hashCode { ... ^ this.an_id.hashCode; ... }

// after
void write(thrift.TProtocol oprot) { _validate(); final elem0 = _an_id; ... if (__isset_eventsDefault && elem84 != null) ... }
bool operator ==(Object o) => o is thing && _an_id == o._an_id && _a_string == o._a_string;
int get hashCode => Object.hash(_an_id, _a_string);       // or keep the 17/31 mix, using private fields
void validate() => _validate();                          // public API kept
void _validate() { ... }
```

Each generated file is its own library, so names like `_validate` and `_an_id` are unique per library and no longer collide across all S structs. In `nullunset` mode the fields are public; consider generating private storage plus a public field-like getter, or simply accept the collision there.

**2. Remove `Function.apply` from `FMethod` (runtime plus generator).**

```dart
// before
late final _blah_fmethod = frugal.FMethod(this._blah, 'Foo', 'blah', _combinedMiddleware);
// FMethod: Function.apply(f, args)

// after
late final _blah_fmethod = frugal.FMethod.fromHandler(
    (List<Object?> a) => _blah(a[0] as frugal.FContext, a[1] as int?, a[2] as String?, a[3] as t_variety.Event?),
    'Foo', 'blah', _combinedMiddleware);
```

This keeps the `List<Object?>` middleware contract while dropping the program-wide apply support.

**3. Make descriptors and enum tables const.**
Add `const` constructors to thrift's `TField` and `TStruct` first; that's a `package:thrift` change.

```dart
static const thrift.TField _AN_ID_FIELD_DESC = thrift.TField('an_id', thrift.TType.I32, 1);
static const Set<int> VALID_VALUES = {FIRST, SECOND, THIRD};
static const Map<int, String> VALUES_TO_NAMES = {FIRST: 'FIRST', ...};
```

**4. Add explicit return types** (`void read/write/validate/unsetX`, `Object? getFieldValue`). Also generate `static const _deepEq = DeepCollectionEquality();`, or typed versions like `ListEquality<Event>()`, instead of creating one per call.

**5. Add an opt-in "lean" mode** that skips `getFieldValue`, `setFieldValue`, `isSet(int)`, `clone` and the full `toString`, or replaces `toString` with a shared helper. This mainly reduces output size; the compile benefit depends on whether app code calls these through `TBase`.

**6. Shrink `read`/`write`.** Move container encode/decode for common element types into shared runtime helpers, for example `readList<T>(iprot, T Function(TProtocol))`. Then each struct's method is a flat list of calls instead of nested loops, which helps the SSA builder and optimizer phases.

## Benchmark variants to add

Use the same `main` shape you have now, with N instantiations. Make the methods reachable through one interface-typed loop so they can't be tree-shaken.

**A. TBase-like interface with `getFieldValue`/`setFieldValue` switches** (patterns 1 and 4):

```dart
abstract class Proto { int readI32(); void writeI32(int v); int readFieldId(); }
class P implements Proto { int readI32() => 0; void writeI32(int v) {} int readFieldId() => 0; }
abstract class TB { void read(Proto p); void write(Proto p); bool isSet(int id); Object? getFieldValue(int id); void setFieldValue(int id, Object? v); }

class S_0 implements TB {
  static const int A = 1, B = 2;
  int? _a; List<int>? _b;
  Object? getFieldValue(int id) { switch (id) { case A: return _a; case B: return _b; default: throw ArgumentError('$id'); } }
  void setFieldValue(int id, Object? v) { switch (id) { case A: _a = v as int?; break; case B: _b = v as List<int>?; break; default: throw ArgumentError('$id'); } }
  bool isSet(int id) => getFieldValue(id) != null;
  void read(Proto p) { for (var f = p.readFieldId(); f != 0; f = p.readFieldId()) { switch (f) { case A: _a = p.readI32(); break; default: break; } } }
  void write(Proto p) { final a = _a; if (a != null) p.writeI32(a); }
}
// main: final all = <TB>[S_0(), S_1(), ...]; final p = P(); for (final s in all) { s.read(p); s.write(p); s.setFieldValue(1, s.getFieldValue(1)); }
```

**B. Shared-selector calls on distinct receiver types** (pattern 2). Each struct nests the previous one and calls a public `validate` through `this`:

```dart
class S_5 implements TB {
  int? _a; S_4? _child;                       // S_i references S_{i-1}
  int? get a => _a; set a(int? v) => _a = v;  // public accessor, same name in every class
  bool isSetA() => _a != null;
  void validate() { if (a == null) throw StateError('a'); }
  void read(Proto p) { a = p.readI32(); final c = S_4(); _child = c; c.read(p); validate(); }
  void write(Proto p) { validate(); p.writeI32(a!); final c = _child; if (c != null) c.write(p); }
  // getFieldValue/setFieldValue/isSet as in A
}
```

Variant B2 is identical but uses `_validate()`, `_a` and per-class unique names. Comparing B with B2 measures recommendation 1 directly.

**C. Field-name collision only** (tests the `val` hypothesis in your current benchmark). Keep your class exactly as it is, and generate the field as `int val_$i;` with uses `other.val_$i`, `val_$i.hashCode` and `'$val_$i'`. If `resolution.dynamicUse` becomes roughly linear, the field-name collision is the cause.

**D. `FMethod` with `Function.apply` versus typed closures** (pattern 9):

```dart
typedef Handler = Future<Object?> Function(List<Object?> args);
class FM { final Handler h; FM.apply(Function f) : h = ((a) => Function.apply(f, a) as Future<Object?>); FM.typed(this.h); }

class Client_0 {
  late final _m = FM.apply(this._call);                                  // variant D1
  // late final _m = FM.typed((a) => _call(a[0] as String, a[1] as int?)); // variant D2
  Future<int?> _call(String ctx, int? x) async => x;
  Future<int?> call(String ctx, int? x) => _m.h([ctx, x]).then((v) => v as int?);
}
// main: N clients, each with a different method signature, e.g. vary argument count and types by i % 4
```

## What I could not verify

- **The exact dart2js 3.13.5 mechanism.** The "members by name × new constraint" explanation is from memory of the dart2js source, not checked against this SDK. Variants B, B2 and C are designed to confirm or refute it.
- **Real Workiva IDLs.** I didn't measure how often field names collide or how deeply structs nest. The `getFieldValue` cost depends on whether Workiva app code calls `getFieldValue` or `setFieldValue` through `TBase`; Frugal's runtime does not.
- **Generating at scale.** I didn't build the Go generator or produce a large Dart sample; the checked-in golden files were enough.
- **The `Function.apply` impact.** Its whole-program effect is known dart2js behavior, but I didn't measure it here.
- **Thrift version.** I read `package:thrift` 0.0.76 from your local pub cache. Frugal's `pubspec.yaml` allows `^0.0.18`, so other apps may resolve a different `TBase`.
