/*

Given List<int>? maybeNumbers (sometimes null, sometimes populated) and a bool showZero flag, 
build a single list literal called result that: starts with 0 only if (showZero),
 then spreads in maybeNumbers safely (works whether it's null or not), then appends the squares of [1, 2, 3] using a for element,
  and finally uses an if/else element to add either 'done' (as a String — this will require List<Object> or similar) 
  or nothing based on whether maybeNumbers was null.
   Print the result for both a null and a non-null case, and confirm no crash occurs either way.


*/

void main() {
  List<int>? maybeNumbers = null;
  bool showZero = true;

  List<Object> result = [
    if (showZero) 0,
    ...?maybeNumbers,
    for (var n in [1, 2, 3]) n * n,
    if (maybeNumbers == null) 'nothing' else 'Done',
  ];
  print(result);
}
