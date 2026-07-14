import 'dart:math';

void main() {
  /////////////////////////////// problem 2 /////////////////////////////////
  ///
  /*

  Given a list of integers and a target sum, find the first pair of indices (i, j) where nums[i] + nums[j] == target. 
  Return a record containing both the indices and the actual values: (int i, int j, int valI, int valJ).
  Input: nums = [2, 7, 11, 15], target = 9
  Output: (i: 0, j: 1, valI: 2, valJ: 7)
  Must use: named record fields, and destructure the result in your test code using the :name shorthand.

  */

  ({int i, int j, int valI, int valJ})? targetIndecesAndValues(
    List<int> values,
    int target,
  ) {
    for (int i = 0; i < values.length; i++) {
      for (int j = 1; j < values.length; j++) {
        if (values[i] + values[j] == target) {
          return (
            i: i,
            j: j,
            valI: values[i],
            valJ: values[j],
          ); // return immediately — stops BOTH loops at once
        }
      }
    }
    return null; // no pair found" case — function return type is now nullable
  }

  var p = targetIndecesAndValues([1, 2, 3, 4, 5, 6, 7, 8, 9], 5);
  print(p);
}
