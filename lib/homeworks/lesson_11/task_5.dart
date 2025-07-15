import 'dart:io';

void main() async {
  delayedCountdown(5);
}

Future<void> delayedCountdown(int seconds) async {
  for (int i = seconds; i > 0; i--) {
    stdout.write('$i..');
    await Future.delayed(const Duration(seconds: 1));
  }
  print('Старт!');
}
