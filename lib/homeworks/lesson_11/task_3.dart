void main() async {
  final stopwatch = Stopwatch();
  stopwatch.start();
  await fetchName();
  await fetchAge();
  print('Час виконання - ${stopwatch.elapsedMilliseconds} мс');
}

Future<String> fetchName() async {
  return Future.delayed(const Duration(seconds: 2), (() => 'Anna'));
}

Future<String> fetchAge() async {
  return Future.delayed(const Duration(milliseconds: 1500), (() => '25'));
}
