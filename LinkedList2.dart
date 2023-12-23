import 'dart:io';
import 'dart:math';

class Node {
  int? data;
  Node? next;

  Node(int data) {
    this.data = data;
    this.next = null;
  }
}

class LinkedList2 {
  Node? head;

  void insert(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node temp = head!;
      while (temp.next != null) {
        temp = temp.next!;
      }
      temp.next = newNode;
    }
  }

  Node? findMiddle() {
    if (head == null) {
      return null;
    }

    Node? start = head;
    Node? end = head;

    while (end != null && end.next != null) {
      start = start!.next;
      end = end.next!.next;
    }

    return start;
  }
}

void main() {
  LinkedList2 linkedList = LinkedList2();

  while (true) {
    stdout.write('Enter a number "enter e to stop ": ');
    String? input = stdin.readLineSync();
    if (input == 'e') {
      break;
    }

    linkedList.insert(int.parse(input!));
  }

  Node? middleNode = linkedList.findMiddle();

  if (middleNode != null) {
    print("Middle Node: ${middleNode.data}");
  } else {
    print("Linked List is empty.");
  }
}
