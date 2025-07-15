import 'dart:async';

void main() async {
  final controller = StreamController<String>();
  controller.stream.listen((data) {
    print(data);
  });
  controller.add('Hello');
  controller.add('World!\n');
  controller.add('Hello');
  controller.add('Pavlo =)');
  controller.close();
}
