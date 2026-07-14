void main() {
  //////////////////////////////////////////////// problem 1 //////////////////////////////////
  /*

  Write a function (double min, double max, double avg) analyze(List<double> values) that returns the minimum, maximum, and average
   of a list — using a record as the return type. Destructure the result in main() and print all three. 
   Then create a typedef Stats = (double min, double max, double avg); and refactor the function signature to use it.
    Finally, create two records with the same values but different named fields (e.g. (min: 1.0, max: 2.0) vs (low: 1.0, high: 2.0))
     and print whether == considers them equal — confirm it matches what this chapter says about shape-based equality.

     */

  (double min, double max, double avg) analyze(List<double> values) {
    // Walks through the entire list, comparing the "accumulated" value (best min so far)
    // against each new "element". If accumulated is smaller, keep it; otherwise switch to element.
    // After checking every item, whatever remains in accumulated is the smallest value in the list.
    var min = values.reduce(
      (accumulated, element) => accumulated < element ? accumulated : element,
    );

    // Same walking pattern as min, but flips the comparison: keeps whichever value is LARGER
    // between accumulated and element at each step. Ends with the largest value in the list.
    var max = values.reduce(
      (accumulated, element) => accumulated > element ? accumulated : element,
    );

    // Walks through the list again, but instead of comparing, it ADDS each element
    // to the running total (accumulated). Starts with the first element as the initial
    // accumulated value, then keeps adding every subsequent element to it.
    // Ends with the sum of all values in the list.
    var sum = values.reduce((accumulated, element) => accumulated + element);

    // Divides the total sum by how many items were in the list,
    // giving the arithmetic mean (average) of all values.
    var avg = sum / values.length;
    return (min, max, avg);
  }

  var p = analyze(([1.0, 2.0, 3.0, 4.0, 5.0]));
  print(p);
}
