/*

Exercise 4 — Guard clauses 

Scenario: A login form needs different error messages depending on password length and content.

Write String checkPassword(String password) using switch with guard clauses (when) on the password's .length and content:


when password.length < 8 → 'Too short'
when !password.contains(RegExp(r'[0-9]')) → 'Needs at least one number'
otherwise → 'Valid password'


Test with 3 different passwords, one triggering each branch.

*/

String checkPassword(String password) {
  switch (password) {
    case _ when password.length < 8:
      return 'too short';
    case _ when !password.contains(RegExp(r'[0-9]')):
      return 'Needs at least one number';
    default:
      return 'Valid password';
  }
}

void main() {
  print(checkPassword('sohila'));
  print(checkPassword('sohilasohila'));
  print(checkPassword('sohil5sohila'));
}
