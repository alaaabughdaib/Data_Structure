import 'dart:io';
import 'dart:collection';

void main() {
  List<int> numbers = [];
  while (true) {
    stdout.write('Enter a number or "e" to finish: ');
    String input = stdin.readLineSync()!;
    if (input == 'e') {
      break;
    }
    numbers.add(int.parse(input));
  }

  reversePrint(numbers);
}

void reversePrint(List<int> list) {
  ListQueue<int> stack = ListQueue<int>();

  // Push all elements into the stack
  for (int i = 0; i < list.length; i++) {
    stack.addLast(list[i]);
  }

  // Pop and print all elements from the stack
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}
