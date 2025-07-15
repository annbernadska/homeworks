void main() async {
  final name = await fetchName();
  print('Мене звати $name');
}

Future<String> fetchName() async {
  return Future.delayed(const Duration(seconds: 2), (() => 'Anna'));
}
