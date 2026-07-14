/*

Write a function String describeShape(Object shape) using an if-case pattern that: 
checks if shape is a Map with keys 'type': 'circle' and 'radius' (a double), 
returning 'Circle with radius X'; otherwise checks if it's a Map with 'type': 'rectangle', 'width', and 'height' (both double),
 returning 'Rectangle W x H'; otherwise returns 'Unknown shape'. Test it with 3 inputs: a valid circle map, a valid rectangle map, 
 and an invalid/incomplete map — confirm each is handled correctly without a single is/as cast written manually.

*/

void main() {
  String describeShape(Object shape) {
    if (shape case {'type': String name, 'raduis': double rad}) {
      return '$name with radius $rad';
    }
    if (shape case {
      'type': String name,
      'hight': double hight,
      'width': double width,
    }) {
      return '$name $hight x $width';
    }
    return 'unknown shape';
  }

  print(describeShape({'type': 'rectangle', 'hight': 5.0, 'width': 0.6}));
  print(describeShape({'type': 'circle', 'raduis': 0.6}));
  print(describeShape({'type': 'square', 'quarter': 0.6}));
}
