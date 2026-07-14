void main() {
  /// basic arithmetic
  int num1 = 5;
  double num2 = 5.0;
  double sum, subtract, multiplication, divison, remain;
  sum = num1 + num2;
  subtract = num1 - num2;
  multiplication = num1 * num2;
  divison = num1 / num2; // fixed: was num1 * num2
  remain = num1 % num2;

  print('sum: $sum');
  print('subtract: $subtract');
  print('multiplication: $multiplication');
  print('divison: $divison');
  print('remain: $remain');

  /// dart specific ones
  int integerDivion = num1 ~/ num2;
  print('integerDivion: $integerDivion');

  /// prefix & postfix matters
  int a = 5;
  int b = 5;

  b = a++; // b takes a's CURRENT value (5), then a becomes 6
  print('after b = a++  -> a: $a, b: $b'); // a: 6, b: 5

  b = ++a; // fixed: was `b == ++a` (a comparison, did nothing)
  print('after b = ++a -> a: $a, b: $b'); // a: 7, b: 7

  /// equality & relational
  if (a is bool) {
    print('is the type');
  } else {
    print('a is not a bool (is check)'); // a is int, so this runs
  }

  if (a is! bool) {
    print('is not the type'); // this runs — a is not bool
  }

  // fixed: `if (a as bool)` would throw a TypeError at runtime since a is int.
  // Demonstrating 'as' safely instead, with something that really is castable:
  Object castableValue = 5;
  print('safe cast result: ${(castableValue as int) + 1}'); // 6

  /// Assignment

  // normal assign =
  String name = 'sohila';
  print('name: $name');

  // assigns only if the variable is null
  String? name2;
  name2 ??= 'Amr';
  print('name2 after first ??=: $name2'); // Amr

  name2 ??= 'Guest'; // name2 already has a value, so this is skipped
  print('name2 after second ??= (should be unchanged): $name2'); // Amr

  // compound assignment
  name2 += ' Guest'; // name2 is now 'Amr Guest'
  a += 5; // a is now 12
  b *= 2; // b is now 14

  print('name2: $name2');
  print('a: $a');
  print('b: $b');

  /// conditional expressions
  // ternary via if-null
  String? userName;
  String displayName = userName ?? 'Guest';
  print('displayName: $displayName'); // Guest

  // if null as a function
  String player(String? pl) => pl ?? 'Guest';
  print('player(null): ${player(null)}'); // Guest
  print('player("Zico"): ${player('Zico')}'); // Zico

  // cascade notation
  var buffer = StringBuffer()
    ..write('Hello')
    ..write(':')
    ..write('World');
  print('buffer: ${buffer.toString()}'); // Hello:World
  // note: use ?.. instead of .. if the object might be null

  // spread operators ... / ...?
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [0, ...list1, 4, 5];
  print('list2: $list2'); // [0, 1, 2, 3, 4, 5]

  print('All states printed ✅');
}
