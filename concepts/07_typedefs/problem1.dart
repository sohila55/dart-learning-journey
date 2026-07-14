/*

Create a generic typedef typedef Validator<T> = bool Function(T value); Then write three functions matching that shape: 
isPositive(int value), isNotEmpty(String value), and isAdult(int age) (age >= 18). 
Prove each one satisfies the typedef using is Validator<int> / is Validator<String> assertions. 
Finally, write a generic function List<T> filterValid<T>(List<T> items, Validator<T> validator) 
that returns only the items where validator(item) is true, and test it with a List<int> using isPositive.

*/

typedef Validator<T> = bool Function(T value);

bool isPositive(int value) => value > 0;
bool isNotEmpty(String value) => value.isNotEmpty;
bool isAdult(int age) => age > 18;

List<T> filterValid<T>(List<T> items, Validator<T> validator) {
  List<T> filteredItems = [];

  for (var item in items) {
    if (validator(item)) {
      filteredItems += [item];
    }
  }

  return filteredItems;
}

void main() {
  assert(isAdult is Validator<int>);
  assert(isPositive is Validator<int>);
  assert(isNotEmpty is Validator<String>);
  var num = [1, 2, -4, 8, 5, 2];
  print(filterValid(num, isPositive));
}
