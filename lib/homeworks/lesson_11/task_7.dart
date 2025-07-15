void main() async {
  final stream = Stream.periodic(const Duration(seconds: 1), (i) => i).take(10);
  stream.listen(((i) => print(i + 1)));
}
