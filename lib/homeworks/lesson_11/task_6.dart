void main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  await for (final i in stream) {
    print(i);
  }

  print('---------');
  stream.listen(((i) => print(i)));
}
