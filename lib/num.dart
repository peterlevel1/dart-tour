void main() {
  parseStringByInt();
  parseStringByNum();
  numToString();
}

parseStringByInt() {
  // int
  assert(int.parse('42') == 42);
  // hex
  assert(int.parse('0x42') == 66);
  // double
  assert(double.parse('0.50') == 0.5);
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

numToString() {
  // int
  assert(42.toString() == '42');
  // double
  assert(123.456.toString() == '123.456');
  // specific number digit
  assert(123.456.toStringAsFixed(2) == '123.46');
  // precision
  assert(123.456.toStringAsPrecision(2) == '1.2e+2');
  // double parse string
  assert(double.parse('1.2e+2') == 120.0);
}


