void main() {
  ////// lists ////////////////////////
  var list1 = [1, 2, 3]; // inferred List<int>
  var list2 = ['Car', 'Boat', 'Plane']; // trailing comma OK, no effect
  list1[1] = 1; // mutate by index
  const constantList = [1, 2, 3]; // immutable

  ////// Sets ////////////////////////
  var list = ['Car', 'Boat', 'Plane'];
  var halogens = {'fluorine', 'chlorine'}; // Set<String>
  var names = <String>{}; //  empty Set — must specify type
  // var names = {};       //  this creates a Map, not a Set!
  list.add('x');
  list.addAll(halogens);
  final constantSet = {'a', 'b'}; // immutable
  constantSet.add('z');
  print('$constantSet \n $list');

  ////// Maps ////////////////////////
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
  }; // Map<String, String>
  var nobleGases = {2: 'helium', 10: 'neon'}; // Map<int, String>

  gifts['fourth'] = 'calling birds'; // add
  print(gifts['first']); // retrieve
  print(gifts['fifth']); // null if key missing — no error
  print(gifts);
  final constantMap = const {2: 'helium'}; // immutable

  ////////////// Null Aware Spread collection //////////////////////
  List<int>? a = null;
  var items = [0, ...?a, 4]; // [0, 4] — a skipped entirely, no crash
  print(items);

  /////////////////// control flow _conditional inclusion //////////////////////
  var include = true;
  var name = 'mango';
  var data = 42;
  var items1 = [0, if (include) 1, 2];
  var items2 = [0, if (name == 'orange') 1 else 10, 2];
  var items3 = [
    if (data case int i) 'Data is: $i',
  ]; // i = 42, and it's usable here
  print('$items1 \n $items2 \n $items3');
}
