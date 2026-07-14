/*

Exercise 5 — For-in loop destructuring 

Scenario: You have a Map<String, double> of employee names to their monthly sales figures, and need to print a formatted report.

dartMap<String, double> sales = {'Amr': 1200.5, 'Lily': 980.0, 'Omar': 1500.75};

Use a for-in loop with object destructuring (the MapEntry(:key, value: ...) shorthand from the chapter)

 to print each line as: Amr sold $1200.50 this month. Use .toStringAsFixed(2) for formatting.

*/

Map<String, double> sales = {'Amr': 1200.5, 'Lily': 980.0, 'Omar': 1500.75};
void main() {
  for (var MapEntry(:key, :value) in sales.entries) {
    print('$key sold ${value.toStringAsFixed(2)} this month');
  }
}
