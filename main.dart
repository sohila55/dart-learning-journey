void main() {
  ///////// Declare variables of different data types
  int a = 10;
  double b = 20.5;
  String c = "Hello, Dart!";
  bool d = true;
  List<int> e = [1, 2, 3, 4, 5];
  Set<String> f = {
    "apple",
    "banana",
    "orange",
    "orange",
  }; // duplicate value will be ignored
  Map<String, int> g = {"one": 1, "two": 2, "three": 3};

  //////// string variation
  String interpolatedVar =
      '${c} The value of a is $a and the value of b is $b.';
  String concatenatedVar =
      c +
      ' The value of a is ' +
      a.toString() +
      ' and the value of b is ' +
      b.toString() +
      '.';
  String multiLineVar =
      '''
  This is a multi-line string.
  The value of a is $a and the value of b is $b.
  ''';

  String rawStringVar =
      r'This is a raw string.\n The value of a is $a and the value of b is $b.';

  ///////////////type conversion

  String intToString = a.toString();
  int stringToInt = int.parse(c.length.toString());
  double stringToDouble = double.parse(b.toString());
  String doubleToString = b.toStringAsFixed(2);
  int doubleToInt = b.toInt();
  double intToDouble = a.toDouble();

  ///////////////////// arithmetic operations

  double sum = a + b;
  double difference = b - a;
  double product = a * b;
  double quotient = b / a;
  double modulus = b % a;
  int interDivision = a ~/ b;

  /////////// Mutate and iterate collections
  e.add(22);
  e.remove([0]);
  for (var i in e) {
    print(i);
  }

  g.forEach((key, value) {
    print('$key: $value');
  });

  ///////////////// Mutate and  iterate collections using wildcard

  for (var _ in f) {
    print('this is an  examaple on a wildcard');
  }

  //////////////  Type system checks (var vs dynamic vs num)

  var varVariable = 10; // type inferred as int
  dynamic dynamicVariable = 20; // type is dynamic
  dynamicVariable = "Now I'm a string"; // can change type
  num numVariable = 30; // can hold int or double
  numVariable = 40.5; // can change to double

  //////////// Break things on purpose (and read the real error)
  print(int.parse('abc'));
  print(10 ~/ 0);
  print(10 / 0);
  //////////////////// assertion
  assert(a > 0, 'a must be greater than 0');
  assert(a / 2 == 0, 'a must be even');
  print('all assertions passed');
}
