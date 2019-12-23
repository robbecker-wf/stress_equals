# stress_equals

Demonstrates how overriding equals puts stress on dart2js type inference

## What it does

Running gen.dart [n] will generate a lib/src/classes.dart and a bin/main.dart that has n classes that override the equals (and hashCode) method. The main method uses them all so they are not tree-shaken out.

The point of this is to be able to reproduce a more complex app that has a lot of equals methods, or to compare compile time with the growth of the number of classes with equals methods.

## How to use it

You can run the `try` shell script with an n paramter for the number of classes to generate. It's just a shortcut for running

```
dart gen.dart [n]
dart2js -v -o bin/main.dart.js -O3 --csp bin/main.dart
```

## Findings

Ran this on a 2013 Macbook Pro w/ 16GB. The compile time is exponential with the number of equals methods, due almost entirely to the increase in time spent in the inference stage of dart2js optimization.
