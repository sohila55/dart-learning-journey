/*

Exercise 8 — Validating incoming JSON (daily API parsing — the killer use case)

Scenario: Your app receives a product object from an API and needs to safely extract fields before displaying them.

dartvar apiResponse1 = {'name': 'Laptop', 'price': 999.99, 'inStock': true};
var apiResponse2 = {'name': 'Mouse'}; // incomplete — missing price/inStock
var apiResponse3 = 'not even a map'; // completely wrong shape

Write String describeProduct(Object data) using an if-case map pattern that validates name (String), price (double), 
and inStock (bool) all exist with correct types in one line, returning a formatted description — 
or 'Invalid product data' if the shape doesn't match. Test all 3 inputs above and confirm each behaves correctly.

*/

var apiResponse1 = {'name': 'Laptop', 'price': 999.99, 'inStock': true};
var apiResponse2 = {'name': 'Mouse'}; // incomplete — missing price/inStock
var apiResponse3 = 'not even a map'; // completely wrong shape
void main() {}
