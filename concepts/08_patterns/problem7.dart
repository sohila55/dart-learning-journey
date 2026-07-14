/*

Exercise 7 — Destructuring class instances

Scenario: You have a simple Address class and want to quickly extract fields without writing .city, .zip repeatedly.

dartclass Address {
  final String city;
  final String zip;
  Address({required this.city, required this.zip});
}

Create an instance, then use an object pattern (var Address(:city, :zip) = myAddress;) to destructure it into local variables in one line, and print a formatted address string.
*/

class Address {
  final String city;
  final String zip;
  Address({required this.city, required this.zip});
}

void main() {
  final Address myAddress = Address(city: 'city', zip: 'zip');
  var Address(:city, :zip) = myAddress;
  print('$city , $zip');
}
