// import 'package:meta/meta.dart';

void main() {
  print(hello(sth1: 'cc'));

  var x;
  var y;
  assert(x == y);
  assert(x == null);

  assert(hello(sth1: 'cc') == 'hello cc');
  assert(hello(sth1: 'cc', sth2: 'haha') == 'hello cc haha');
}

// optionalParams
String hello({ sth1, sth2 }) {
  return 'hello $sth1 ${sth2 != null ? sth2 : ''}'.trim();
}

