void main() {
  basic();
  handleUriComponent();
  handleParsing();
  handleBuilding();
}

basic() {
  var uri = 'http://example.org/api?foo=some message';
  var encodedUri = Uri.encodeFull(uri);

  assert(encodedUri == 'http://example.org/api?foo=some%20message');
  assert(Uri.decodeFull(encodedUri) == uri);
}

handleUriComponent() {
  var uri = 'http://example.org/api?foo=some message';

  var encoded = Uri.encodeComponent(uri);
  assert(encoded ==
      'http%3A%2F%2Fexample.org%2Fapi%3Ffoo%3Dsome%20message');

  var decoded = Uri.decodeComponent(encoded);
  assert(uri == decoded);
}

handleParsing() {
  var uri = Uri.parse('http://example.org:8080/foo/bar#frag');

  assert(uri.scheme == 'http');
  assert(uri.host == 'example.org');
  assert(uri.port == 8080);
  assert(uri.path == '/foo/bar');
  assert(uri.fragment == 'frag');
  assert(uri.origin == 'http://example.org:8080');
  assert(uri.toString() == 'http://example.org:8080/foo/bar#frag');
}

handleBuilding() {
  var uri = Uri(
    scheme: 'http',
    host: 'example.org',
    port: 8080,
    path: '/foo/bar',
    fragment: 'frag'
  );

  assert(uri.scheme == 'http');
  assert(uri.host == 'example.org');
  assert(uri.port == 8080);
  assert(uri.path == '/foo/bar');
  assert(uri.fragment == 'frag');
  assert(uri.origin == 'http://example.org:8080');
  assert(uri.toString() == 'http://example.org:8080/foo/bar#frag');
}
