import 'dart:io';

class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList3 {
  Node? head;

  void reverse() {
    Node? prev = null;
    Node? current = head;
    Node? next;

    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }

    head = prev;
  }

  void add(int value) {
    Node newNode = Node(value);

    if (head == null) {
      head = newNode;
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = newNode;
    }
  }

  void printList() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  LinkedList3 linkedList = LinkedList3();
  print('Enter the list of numbers separated by spaces and press Enter:');
  var input = stdin.readLineSync();
  List<int> numbers = input?.split(' ').map(int.parse).toList() ?? [];
  numbers.forEach((num) => linkedList.add(num));

  print('Original Linked List:');
  linkedList.printList();

  linkedList.reverse();

  print('\nReversed Linked List:');
  linkedList.printList();
}
