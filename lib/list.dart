void main() {
  basic();
  handleSort();
  specificTypes();
}

basic() {
  var fruits = List();

  fruits.add('apple');
  fruits.addAll(['pear', 'banana']);

  assert(fruits.length == 3);

  var indexPear = fruits.indexOf('pear');
  assert(indexPear == 1);

  fruits.removeAt(indexPear);
  assert(fruits.length == 2);
  assert(fruits[1] == 'banana');

  fruits.clear();
  assert(fruits.length == 0);
}

handleSort() {
  var fruits = ['pear', 'apple', 'banana'];

  fruits.sort((a, b) => a.compareTo(b));

  assert(fruits[0] == 'apple');
  assert(fruits[1] == 'banana');
  assert(fruits[2] == 'pear');
}

specificTypes() {
  var fruits = List<String>();

  fruits.add('banana');

  assert(fruits.length == 1);

  // ! static analysis: error
  // try {
  //   fruits.add(1);
  // } catch (e) {
  //   print(e);
  // }
}

