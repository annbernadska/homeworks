import 'dart:math';

import 'package:dart_collections_journey/names.dart';
import 'package:word_generator/word_generator.dart';

void main() {
  runTask1();
  runTask2();
  runTask3();
}

void runTask1() {
  print('Task 1 is starting...');
  final list = List.generate(100, (index) => Random().nextInt(101));
  print(list);
  print("65-й елемент: ${list[64]}");
  list.insert(49, 1000000000);
  list.removeWhere(
    (item) => item == 24 || item == 45 || item == 66 || item == 88,
  );

  int sumOfThree = 0;
  for (final i in list) {
    if (i % 3 == 0) {
      sumOfThree += i;
    }
  }
  print('Сума всіх елементів, що діляться на 3 без залишку: $sumOfThree');
  List temp = [];
  for (final i in list) {
    if (i % 2 == 0) {
      temp.add(i);
    }
  }
  print('Довжина списку з елементами що діляться на 2: ${temp.length}');
  print('Task 1 completed!\n\n');
}

void runTask2() {
  print('Task 2 is starting...');
  Set uniqueNames1 = Set.from(ukrainianNames1);
  Set uniqueNames2 = Set.from(ukrainianNames2);
  Set commonNames = uniqueNames1.intersection(uniqueNames2);
  print('Кількість спільних імен: ${commonNames.length}');
  Set onlyInFirst = uniqueNames1.difference(uniqueNames2);
  Set onlyInSecond = uniqueNames2.difference(uniqueNames1);
  print('Імена що є лише в першому списку: $onlyInFirst');
  print('Імена що є лише в другому списку: $onlyInSecond');
  print('Task 2 completed!\n\n');
}

void runTask3() {
  print('Task 3 is starting...');
  final nounsList = WordGenerator().randomNouns(50);
  Map<String, int> nounsMap = {for (var noun in nounsList) noun: noun.length};
  Map<String, int> tempNouns = Map.fromEntries(
    nounsMap.entries.where((entry) => entry.value % 2 == 0),
  );
  print(tempNouns.keys.toList());
  print('Task 3 completed!\n\n');
}
