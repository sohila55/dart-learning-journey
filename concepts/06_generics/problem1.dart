/*

Build a generic class Box<T> with a single field T value and a method bool isSameType(Box other) 
that checks (using is) whether other's runtime type matches this box's using the reified generics feature —
 prove it works by creating Box<int> and Box<String> instances and comparing them. 
 Then write a generic function T largest<T extends Comparable<T>>(List<T> items) that returns the largest item in a list using .compareTo(),
 and test it with both a List<int> and a List<String>.
*/

class Box<T> {
  T value;
  Box(this.value);

  bool isSameType(Box other) {
    return other is Box<T>;
  }
}

T largest<T extends Comparable<T>>(List<T> items) {
  T larger = items.reduce(
    (first, second) => first.compareTo(second).isNegative ? second : first,
  );
  return larger;
}

void main() {
  var box1 = Box<int>(5).isSameType(Box<int>(2));
  var box2 = largest(<num>[1, 2, 3]);
  var box3 = largest(<String>['a', 'B', 'c']);

  print(box1);
  print(box3);
}
