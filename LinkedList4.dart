import 'dart:io';

class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void removeAllOccurrences(int item) {
    if (head == null) return;

    Node? current = head;
    Node? prev = null;

    while (current != null) {
      if (current.data == item) {
        if (prev != null) {
          prev.next = current.next;
        } else {
          head = current.next;
        }
      } else {
        prev = current;
      }
      current = current.next;
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  String? input;

  print('Enter list items:');

  while (true) {
    input = stdin.readLineSync();
    if (input == 'e') break;
    int data = int.parse(input!);
    Node newNode = Node(data);

    if (list.head == null) {
      list.head = newNode;
    } else {
      Node? current = list.head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  print('Original list:');
  list.printList();
  print ("enter the number to delete :")
  int itemToRemove = int.parse(stdin.readLineSync()!);
  list.removeAllOccurrences(itemToRemove);

  print('\nList after removing all occurrences of $itemToRemove:');
  list.printList();
}
