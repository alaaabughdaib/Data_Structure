import 'dart:collection';
import 'dart:io';

bool isBalanced(String s) {
  ListQueue<String> stack = ListQueue<String>();

  for (int i = 0; i < s.length; i++) {
    String currentCharacter = s[i];

    if (currentCharacter == '(') {
      // If the current character is '(', push it to the stack
      stack.addLast(currentCharacter);
    } else if (currentCharacter == ')') {
      // If the current character is ')', pop an element from the stack
      if (stack.isEmpty) {
        // If the stack is empty, return false
        return false;
      }
      stack.removeLast();
    }
  }

  // If the stack is empty at the end, return true
  return stack.isEmpty;
}

void main() {
  print("please enter the parentheses : ");
  String? input = stdin.readLineSync();
  bool isParenthesesBalanced = isBalanced(input!);

  // Print the result
  if (isParenthesesBalanced) {
    print('The parentheses are balanced.');
  } else {
    print('The parentheses are not balanced.');
  }
}
