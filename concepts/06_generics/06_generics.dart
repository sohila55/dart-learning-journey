import 'dart:collection';

// ---------- Example 1: Basic generic class, multiple instances ----------
class Box<T> {
  T value;
  Box(this.value);

  @override
  String toString() => 'Box<$T>($value)';
}

// ---------- Example 2: Two type parameters ----------
class Pair<A, B> {
  A first;
  B second;
  Pair(this.first, this.second);

  @override
  String toString() => '($first, $second)';
}

// ---------- Example 3: Named constructor with generics ----------
class Wrapper<T> {
  final List<T> items;
  Wrapper(this.items);

  // named constructor — creates a Wrapper with a single item
  Wrapper.single(T item) : items = [item];

  @override
  String toString() => 'Wrapper<$T>($items)';
}

void main() {
  // --- Example 1 in action ---
  var intBox = Box<int>(5);
  var stringBox = Box<String>('hello');
  var boolBox = Box<bool>(true);

  print(intBox); // Box<int>(5)
  print(stringBox); // Box<String>(hello)
  print(boolBox); // Box<bool>(true)

  // proving reified generics — the type is checkable at runtime
  print(intBox is Box<int>); // true
  print(intBox is Box<String>); // false

  print('---');

  // --- Example 2 in action ---
  var p1 = Pair<String, int>('Alice', 30);
  var p2 = Pair<int, bool>(1, true);
  var p3 = Pair<double, String>(3.14, 'pi');

  print(p1); // (Alice, 30)
  print(p2); // (1, true)
  print(p3); // (3.14, pi)

  print('---');

  // --- Example 3 in action ---
  var w1 = Wrapper<int>([1, 2, 3]);
  var w2 = Wrapper<String>.single('onlyOne');

  print(w1); // Wrapper<int>([1, 2, 3])
  print(w2); // Wrapper<String>([onlyOne])

  print('---');

  // --- Built-in generic constructors (Set.of, SplayTreeMap) ---
  var names = ['Seth', 'Kathy', 'Lars', 'Seth']; // note the duplicate
  var nameSet = Set<String>.of(names);
  print(nameSet); // {Seth, Kathy, Lars} — duplicate removed

  var sortedMap = SplayTreeMap<int, String>();
  sortedMap[3] = 'three';
  sortedMap[1] = 'one';
  sortedMap[2] = 'two';
  print(
    sortedMap,
  ); // {1: one, 2: two, 3: three} — kept sorted by key automatically
}
