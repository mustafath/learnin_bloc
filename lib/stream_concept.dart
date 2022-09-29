Stream<int> boatStream() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: (i)));
    yield i;
  }
}

void main() {
  Stream<int> stream = boatStream();
  stream.listen((event) {
    print(event.toString());
  });
}
