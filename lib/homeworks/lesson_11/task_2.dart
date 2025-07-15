void main() async {
  final age = await fetchAge();

  print('Мені ${formatYears(int.parse(age))}');
}

Future<String> fetchAge() async {
  return Future.delayed(const Duration(microseconds: 1500), (() => '25'));
}

String formatYears(int age) {
  final temp = age % 100;
  final suffix =
      (temp >= 11 && temp <= 14)
          ? 'років'
          : (temp % 10 == 1)
          ? 'рік'
          : (temp % 10 >= 2 && temp % 10 <= 4)
          ? 'роки'
          : 'років';
  return '$age $suffix';
}
