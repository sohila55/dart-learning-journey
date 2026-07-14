typedef IntList = List<int>;
IntList il = [1, 2, 3];

/// typedefs can be generics and create reusable templates
typedef ListMapper<X> = Map<X, List<X>>;

ListMapper<String> m = {
  'a': ['A', 'a'],
  'b': ['B', 'b'],
  'c': ['C', 'c'],
  'd': ['D', 'd'],
}; // same as Map<String, List<String>> m = {};

ListMapper<bool> m2 = {
  true: [true],
  false: [false],
};
ListMapper<num> m3 = {
  1: [1, 1.0],
  2: [2, 2.0],
};

///////Function typedefs  ///////////

typedef Compare<T> = int Function(T a, T b);
int sort(int a, int b) => a - b;

void main() {
  print(il);
  print('$m \n $m2 \n $m3');
  assert(sort is Compare<int>); // true
}
