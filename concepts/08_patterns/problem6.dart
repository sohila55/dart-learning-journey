/*

Exercise 6 — Destructuring multiple returns 

Scenario: A function calculates order totals and needs to return both the subtotal and the tax amount.
Write (double subtotal, double tax) calculateOrder(List<double> prices, double taxRate) 
that returns the sum of prices and the tax on that sum as a record.
 Destructure the result directly in main() using a variable declaration pattern,
 and print both values formatted to 2 decimal places.
*/

void main() {
  (double subtotal, double tax) calculateOrder(
    List<double> prices,
    double taxRate,
  ) {
    double subtotal = 0.0;
    for (var item in prices) {
      subtotal += item;
    }
    final tax = subtotal * (taxRate / 100);
    return (subtotal, tax);
  }

  var (subtotal, tax) = calculateOrder([1.0, 2.2, 3.8, 4.5], 10.0);
  print('$subtotal , ${tax.toStringAsFixed(2)}');
}
