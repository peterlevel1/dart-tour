void main() {
  basic();
  handleIntersection();
}

basic() {
  var set1 = Set();

  set1.addAll(['a', 'b']);
  set1.add('a');

  // it should not containes a and a
  // the length should be 2
  assert(set1.length == 2);
  assert(set1.containsAll(['a', 'b']));
}

handleIntersection() {
  var set1 = Set();
  set1.addAll(['a', 'b', 'c']);

  var set2 = Set.from(['b', 'c', 'd']);
  var set3 = set1.intersection(set2);

  assert(set3.length == 2);
  assert(set3.containsAll(['b', 'c']));

  set3.add('b');
  assert(set3.length == 2);
}
