void main() {
  basic();
  practicalMethods();
}

basic() {
  // tripple way to build a map
  var map1 = { 'a': 'b' };
  assert(map1 is Map);

  var map2 = Map();
  assert(map2 is Map);

  var map3 = Map<int, String>();
  map3.addAll({ 1: 'aaa', 2: 'bbb' });
  assert(map3 is Map);
  assert(map3[1] == 'aaa');
}

practicalMethods() {
  var map1 = {
    'str': 'hello world',
    'sth': 'haha'
  };

  assert(map1.containsKey('str'));

  map1.remove('str');
  assert(!map1.containsKey('str'));

  assert(map1.keys.toList().length == 1);

  map1.putIfAbsent('sth', () => 'haha');
  assert(map1.containsKey('sth'));
}

