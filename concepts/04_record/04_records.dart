void main() {
  /// syntax type

  var record = ('first', 5); // positional
  var namedRec = ({'name': 'dally', 'age': 5});

  /// named record
  var mixed = ('first', a: 2, 'last', n: 'san'); // mixed

  //// fields as getters not setters , record's immutable
  print(record.$1); // positional
  print(mixed.a); // named

  ////  Equality
  // case 1
  (int, int) a = (1, 2);
  (int, int, int) b = (1, 2, 3);
  // a = b ;              /// error , different shape (3 fields with 2 fields)

  // case 2
  (int, String) a2 = (1, 'cc');
  (String, int) b2 = ('cc', 3);
  // a2 = b2 ;              /// error , different shape (types are swaped)

  // case 3
  ({int a, int b}) a3 = (a: 1, b: 2);
  ({int x, int y}) b3 = (x: 4, y: 6);
  // a3 = b3 ;              /// error , different shape (names are different)

  // case 4
  (int, int) a4 = (1, 2);
  (int, int) b4 = (2, 3);
  print(a4 == b4);

  /// right , same shape (field , type , name)
}

typedef Point = ({int x, int y});
Point p = (x: 2, y: 1);
