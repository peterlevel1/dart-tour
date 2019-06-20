main() {
  searchingInsideString();
  handleSubString();
  handleUpperOrLower();
  handleTrim();
  whetherEmpty();
  handleReplace();
  handleStringBuffer();
}

searchingInsideString() {
  assert('Never odd or even'.startsWith('Never'));
  assert('Never odd or even'.endsWith('even'));
  assert('Never odd or even'.indexOf('odd') == 6);
  assert('Never odd or even'.contains('odd'));
}

handleSubString() {
  assert('Never odd or even'.substring(6, 9) == 'odd');
  assert('Never odd or even'[0] == 'N');

  var parts = 'structured web apps'.split(' ');
  assert(parts[0] == 'structured');
  assert(parts.length == 3);

  // print('Never odd or even'.codeUnits);
}

handleUpperOrLower() {
  assert('a'.toUpperCase() == 'A');
  assert('A'.toLowerCase() == 'a');
}

handleTrim() {
  assert('  hello '.trimLeft() == 'hello ');
  assert('  hello '.trimRight() == '  hello');
  assert('  hello '.trim() == 'hello');
}

whetherEmpty() {
  assert('a'.isNotEmpty);
  assert(''.isEmpty);
}

handleReplace() {
  var str = 'hello world';
  var greeting = str.replaceAll('world', 'cc');

  assert(str == 'hello world');
  assert(greeting == 'hello cc');

  var str2 = 'sth sth';
  assert(str2.replaceFirst('sth', 'haha') == 'haha sth');
  assert(str2.replaceAll('sth', 'haha') == 'haha haha');

  // TODO: RegExp
  // var str3 = '123abc';
  // assert(str3.replaceAll(RegExp('\d+') == 'qqqabc');
}

handleStringBuffer() {
  var sbuf = StringBuffer();

  sbuf
    ..write('Use StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');

  var str = sbuf.toString();

  assert(str == 'Use StringBuffer for efficient string creation.');
}
