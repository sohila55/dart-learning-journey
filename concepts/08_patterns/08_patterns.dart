void main() {
  var list = ['a', 55, 'bdd']; // first element IS 'a'
  switch (list) {
    case ['a' || 'b', var c]:
      print(c);
  }
  var pair = (3, 4);
  switch (pair) {
    case (int a, int b) when a > b:
      print('First element greater'); // only runs if the guard passes
    case (int a, int b):
      print('First element not greater'); // falls through here if guard failed
  }

  Map<String, int> hist = {'a': 23, 'b': 100};
  for (var MapEntry(:key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }
}
