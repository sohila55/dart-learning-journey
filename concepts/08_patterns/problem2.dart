/*

Exercise 2 — Variable declaration pattern (swap without a temp variable)

Scenario: You're tracking a "current" and "previous" screen in a simple navigation stack, and need to swap them when the user hits "back."

Declare var (current, previous) = ('SettingsPage', 'HomePage'); then swap them using an assignment pattern (no var/final, no third temp variable).

 Print both before and after the swap.

*/

void main() {
  var (current, previous) = ('SettingsPage', 'HomePage');
  print('$current, $previous');

  (previous, current) = (current, previous);
  print('$current, $previous');
}
