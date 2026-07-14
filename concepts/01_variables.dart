void main() {
  int num1 = 10;

  // nullable — demonstrate an ACTUAL null case, not just a non-null value
  int? num2 = 20;
  int? num2Null; // truly null right now

  bool isTrue = false;
  print('isTrue: $isTrue');

  // ⚠️ num2 is nullable — must handle null before arithmetic
  final sum = num1 + (num2 ?? 0);
  final sumWithNull = num1 + (num2Null ?? 0); // fallback kicks in here
  print('sum: $sum');
  print('sumWithNull: $sumWithNull');

  final double sum2 = 20.5 + num1;
  print('sum2: $sum2');

  const pi = 3.14;
  var multiplicated = pi * (num2 ?? 0);
  print('multiplicated: $multiplicated');
  // final var multiplicated = pi * num2; // ERROR: can't combine final + var

  //////////// late keyword

  // Case (a): declare now, assign later — NOT lazy, just deferred assignment
  late String name;
  name = 'hello, John';
  print(name);

  // Case (b): lazy initialization — expression runs only on first access
  late double division = sum / num1;
  print('division: $division'); // triggers the lazy evaluation here

  ///// wildcard variable
  // the initializer still executes, even though the value is discarded
  var _ = print('wildcard initializer still runs');
  var _ = 2; // no collision, allowed

  var (first, _, second) = (1, 2, 3);
  print('${first + second}');

  // quick self-check
  assert(sum == 30);
  assert(sumWithNull == 10);
  print('All assertions passed ✅');
}
