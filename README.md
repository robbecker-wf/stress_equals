# stress_equals

A dart2js compile-time stress test. It generates N classes and compiles them with
`dart compile js -O3`. Variants of the generator isolate which code shapes make compile time grow
quadratically.

The project started as "overriding `==` stresses dart2js type inference". That turned out to be
wrong. The `==` override and its parameter type make almost no difference. The real cause is
**many classes each declaring an instance member with the same name and reading it through their
own receiver type**. Generated code (Frugal/Thrift structs, built_value, JSON models) hits this
all the time.

## Requirements

- A Dart SDK `>=2.19` on `PATH` (for `dart compile js`).
- `make`.

## Usage

Run `make` for the common targets, or `make help` for all of them.

```sh
make try 1000                     # generate 1000 classes (VARIANT=dynamic) and compile them
make try 1000 VARIANT=basefield   # same, with a different code shape
make gen 500 VARIANT=frugal       # only generate code into bin/ and lib/src/
make compile                      # only compile bin/main.dart -> bin/main.dart.js
```

`make compile` runs `dart compile js -v -o bin/main.dart.js -O3 --csp bin/main.dart`. The `-v`
output includes per-phase timings, such as `resolution.dynamicUse` and SSA builder.

### Benchmark sweep and report

```sh
make bench                                       # every variant, N = 1 .. 4000 (frugal-* up to 1000)
make bench VARIANTS="dynamic basefield" SIZES="100 1000 4000"
make bench FRUGAL_MAX=2000                       # let frugal-* variants go past N=1000
make report RESULTS=bench_results/<run>          # rebuild report.html from an existing run
```

Each run writes to `bench_results/<timestamp>/`:

- `results.json`: the raw timings, output size and SDK version.
- `logs/`: the full compiler output for each (N, variant).
- `report.html`: charts and comparison tables. Open this one.

A full sweep takes a while, and frugal structs are about 6× heavier per N than synthetic classes.
Run it on an idle machine, because background load inflates the times.

### Variants

Synthetic variants generate `ZBase_i` classes, each with a field `val`, all instantiated as map keys
in one big `main`:

| Variant | What changes |
|---|---|
| `dynamic` (default) | `operator ==(dynamic)`, `hashCode` and `toString` all read `val` |
| `object`, `nullable` | `==` takes `Object` / `Object?` |
| `none` | no `==` override |
| `hashcode`, `tostring` | only `hashCode` / only `toString` |
| `plain` | no `==`, `hashCode` or `toString` |
| `tostring-const` | `toString` returns a constant (doesn't read `val`) |
| `unique` | each class names its field `val_<i>` |
| `basefield` | `val` declared once on the base class |
| `split` | `main` split into helper functions of 100 inserts |
| `unique-split` | `unique` + `split` |
| `libs` | one library per class |
| `private` | one library per class, field named `_val` |

Frugal variants generate structs shaped like the Frugal Dart generator's output. Each has six
fields (int, string, list, nested struct), `read`/`write`, `validate`, `==`/`hashCode`, plus an
`FMethod` service client and a mini thrift runtime in `lib/src/classes/thrift.dart`. Each variant
applies one of the generator changes from `research/frugal-dart-codegen.md`:

| Variant | What changes |
|---|---|
| `frugal` | as Frugal generates today |
| `frugal-private` | generated methods read private fields and call private `_validate()` |
| `frugal-private-fields` | private fields, but still calls public `validate()` (API-safe) |
| `frugal-safe` | `frugal-private-fields` + `const DeepCollectionEquality()`; matches [Workiva/frugal#3105](https://github.com/Workiva/frugal/pull/3105) |
| `frugal-typed-fmethod` | `FMethod` takes a typed closure instead of `Function.apply` |
| `frugal-const` | `static const` field descriptors, explicit return types, shared const equality |
| `frugal-lean` | no `getFieldValue`/`setFieldValue`/`isSet(int)`/`clone`/`toString` |
| `frugal-helpers` | list read/write via shared runtime helpers |
| `frugal-all` | all of the above |

## Findings

The numbers below come from two back-to-back sweeps on the same 10-core Apple Silicon machine. One
used stock dart2js (`main` @ `25a38e4`, `bench_results/20261002-065923`). The other used the same
SDK with the dart2js patch below (`bench_results/20261002-064614`).

### 1. The cost is a shared member name, not `==`

Synthetic classes at N=4000, stock dart2js:

| Variant | Compile time |
|---|---|
| `dynamic` | 12.3s |
| `none` (no `==`) | 10.4s |
| `tostring-const` (nothing reads `val`) | 1.9s |
| `plain` | 1.5s |
| `basefield` (one `val` on the base class) | 4.5s |
| `unique` (unique field names) | 5.3s |
| `split` (split `main`) | 6.7s |
| `private` (per-class library + `_val`) | 8.2s |
| `libs` (per-class library) | 14.2s |

Removing `==` saves little. The cost appears as soon as N classes each read their own `val`. It
grows quadratically, and older sweeps to N=7000 took 37.6s and 2.4 GB of memory. Splitting `main`
and per-class private names help partially. Declaring the field once on a shared base class, or
giving each class a unique name, removes most of the cost.

### 2. Root cause in dart2js

Three places in dart2js do O(N) work per receiver type for a member name, so O(N²) overall:

- `ResolutionWorldBuilder._processSet` rescans every pending member usage with that name for each
  new receiver constraint.
- `FunctionSetNode.query` runs `canHit` against every same-named member for each receiver mask.
- `MemorySet.killAffectedBy` (SSA load elimination) iterates every tracked field, including final
  fields that a store can never affect.

The fix is in `patches/dart2js-quadratic-fixes.patch` and
[robbecker-wf/sdk#1](https://github.com/robbecker-wf/sdk/pull/1). It produces byte-identical
JavaScript output.

| Benchmark | Stock | Patched |
|---|---|---|
| `dynamic`, N=7000 (earlier run) | 37.6s / 2.4 GB peak memory | 8.3s / 589 MB |
| `dynamic`, N=4000 | 12.3s | 4.9s |
| `libs`, N=4000 | 14.2s | 6.5s |
| `frugal`, N=1000 | 32.9s | 22.9s |
| `frugal-all`, N=1000 | 15.9s | 13.1s |

### 3. Frugal-generated code

Frugal structs hit the pattern hard. Every struct's `read`/`write`/`==`/`hashCode`/`validate`
calls same-named public getters, `isSetX()` and `validate()` on `this`. Results at N=1000 structs,
stock dart2js:

| Variant | Compile time |
|---|---|
| `frugal` (today) | 32.9s |
| `frugal-private` | 23.4s (−29%) |
| `frugal-lean` | 22.4s (−32%) |
| `frugal-const` | 31.2s |
| `frugal-helpers` | 31.9s |
| `frugal-typed-fmethod` | 32.9s (no gain, larger output) |
| `frugal-all` | 15.9s (−52%) |

Reading private fields inside generated methods is the change that gives the biggest win while
keeping the API. In an earlier run, keeping the public `validate()` call (`frugal-private-fields`)
measured the same as the private `_validate()` variant. So the API-safe form loses nothing.

Upstream PRs:

- [Workiva/frugal#3105](https://github.com/Workiva/frugal/pull/3105): generated Dart methods read
  private fields directly and use `const DeepCollectionEquality()`. There's no public API or
  runtime behavior change. With the real generator at 1000 structs, compile time went from 29.5s
  to 25.1s (−15%). `resolution.dynamicUse` went from 4.2s to 2.8s, and SSA from 8.6s to 6.2s.
- [Workiva/frugal#3106](https://github.com/Workiva/frugal/pull/3106): fixes Dart constants that
  reference a struct from an included IDL, which generated an undefined `t_variety.thing()` call.

Removing the reflective helpers (`frugal-lean`) and the rest of `frugal-all` would roughly halve
compile time. They change the public API, so they need a breaking-change discussion.

## Layout

| Path | Contents |
|---|---|
| `gen.dart` | generator entry point and synthetic variants |
| `gen_frugal.dart` | Frugal-style struct and runtime generator |
| `tool/bench.dart`, `tool/bench_report.dart` | sweep runner and HTML report |
| `bin/main.dart`, `lib/src/` | generated code (overwritten by `make gen`) |
| `bench_results/` | committed benchmark runs |
| `research/frugal-dart-codegen.md` | full review of Frugal's Dart generator and recommended changes |
| `patches/dart2js-quadratic-fixes.patch` | the dart2js fix, applicable to the Dart SDK |
