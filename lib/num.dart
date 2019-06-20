void main() {
  parseStringByInt();
}

parseStringByInt() {
  // int
  assert(int.parse('42') == 42);
  // hex
  assert(int.parse('0x42') == 66);
  // double
  assert(int.parse('0.50') == 0.5);
  // radix: 16, assume input string is hex string
  assert(int.parse('42', radix: 16) == 66);
}

parseStringByNum() {
  // int
  assert(num.parse('42') is int);
  // hex
  assert(num.parse('0x42') is int);
  // double
  assert(num.parse('0.50') is double);
}

