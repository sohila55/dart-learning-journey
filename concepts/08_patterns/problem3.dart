/*

Exercise 3 — Switch expression + logical-or (daily UI logic)

Scenario: An e-commerce app needs to decide a shipping label color based on order status.

Create an enum OrderStatus { pending, processing, shipped, delivered, cancelled, returned }.
 Write a switch expression String labelColor(OrderStatus status) that:
Returns 'orange' for pending or processing (use a logical-or pattern to share one branch)
Returns 'blue' for shipped
Returns 'green' for delivered
Returns 'red' for cancelled or returned (another logical-or)


Test with all 6 status values.
*/

enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled,
  returned,
}

String labelColor(OrderStatus status) {
  return switch (status) {
    OrderStatus.pending || OrderStatus.processing => 'orange',
    OrderStatus.shipped => 'blue',
    OrderStatus.delivered => 'green',
    OrderStatus.cancelled || OrderStatus.returned => 'red',
    _ => 'misMatch',
  };
}

void main() {
  print(labelColor(OrderStatus.cancelled));
}
