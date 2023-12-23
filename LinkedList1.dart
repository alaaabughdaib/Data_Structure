import 'dart:io';

class Node {
  int data;
  Node? next;

  Node(this.data);
}

class linkedlist1 {
  Node? head;

  void add(int value) {
    if (head == null) {
      head = Node(value);
    } else {
      Node? current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = Node(value);
    }
  }

  void printInReverse() {
    if (head == null) {
      print('The list is empty.');
    } else {
      List<int> result = [];
      Node? current = head;
      while (current != null) {
        result.add(current.data);
        current = current.next;
      }
      print(result.reversed.join(' '));
    }
  }
}

void main() {
  linkedlist1 list = linkedlist1();
  while (true) {
    stdout.write('Enter a number or \'e\' to end: ');
    String? input = stdin.readLineSync();
    if (input == 'e') {
      break;
    }
    int value = int.parse(input!);
    list.add(value);
  }
  list.printInReverse();
}
