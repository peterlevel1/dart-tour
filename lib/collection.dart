void main() {
  basic();
}

basic() {
  var list = ['a', 'b', 'c', 'd'];

  var i = 0;
  list.forEach((value) {
    assert(list[i] == value);
    i++;
  });
  i = 0;

  var list2 = list.map((value) {
    return value.toUpperCase();
  });

  assert(list2 != list);
  assert(list2 is Iterable);

  assert(list2.toList() is List);

  assert(list.any((val) => (val == 'a')));

  assert(!list.every((val) => (val == 'a')));

  assert(list.where((val) => val == 'a').toList().length == 1);
}
