/*
Write String gradeLetter(int score) using a switch expression with relational + logical-and patterns (no guard clauses)
 for: < 0 or > 100 → 'Invalid'; >= 90 → 'A'; >= 80 && < 90 → 'B'; >= 70 && < 80 → 'C'; else → 'F'. 
 Then write a second function String greetUser(String? name) using a null-check pattern to greet by name if present,
  or 'Hello, stranger' if null — no ?? allowed, patterns only.

*/

String gradeLetter(int score) {
  return switch (score) {
    < 0 || > 100 => 'Invalid',
    >= 90 => 'A',
    >= 80 && < 90 => 'B',
    >= 70 && < 80 => 'C',
    _ => 'F',
  };
}

String? greetUser(String? name) {
  return switch (name) {
    var name? => 'Hello,$name',
    null => 'Hello ,Stranger',
  };
}

void main() {
  print(greetUser('Sara')); // Hello,Sara
  print(greetUser(null)); // Hello ,Stranger
}
