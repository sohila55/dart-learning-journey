void main() {
  //// Digit separator
  final int largeNumber = 1_000_000; // easier to read than 1000000
  print('largeNumber: $largeNumber');

  ///converting between types
  int num1 = 42;
  double num2 = 3.14;
  String num3 = '100';
  String num1AsString = num1.toString(); // convert int to String
  String num2AsString = num2.toString(); // convert double to String
  int num2AsInt = num2.toInt(); // convert double to int
  double num1AsDouble = num1.toDouble(); // convert int to double
  int stringAsInt = int.parse(num3); // convert String to int
  double stringAsDouble = double.parse(num3); // convert String to double

  print('stringAsInt: $stringAsInt');
  print('stringAsDouble: $stringAsDouble');

  print('num2AsInt: $num2AsInt');
  print('num1AsDouble: $num1AsDouble');

  print('num1AsString: $num1AsString');
  print('num2AsString: $num2AsString');

  ///string interpolation
  String name = 'Alice';
  print('Hello, $name!'); // Hello, Alice!
  print(
    'The length of your name is ${name.length}.',
  ); // The length of your name is 5.

  /// concatenation
  String greeting =
      'Hello, '
      'World!'; // adjacent literals
  String greeting2 = 'Hello, ' + 'World!'; // + operator
  print('greeting: $greeting');
  print('greeting2: $greeting2');

  ///raw string
  String rawString =
      r'This is a raw string.\nNew line will $name not be created.';
  print('rawString: $rawString');

  ///multi line string
  String multiLineString = '''
this line one 
this line two 
this line three 
''';

  print(
    'multiLineString: $multiLineString',
  ); // print each line separately without \n
}
