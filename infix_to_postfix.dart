import 'package:stack/stack.dart';

bool isOperand(String c) {
  if (c == '+' || c == '-' || c == '*' || c == '/') {
    return false;
  } else {
    return true;
  }
}

int precedence(String c) {
  if (c == '+' || c == '-')
    return 1;
  else if (c == '*' || c == '/')
    return 2;
  else
    return 0;
}

String infixToPostfix(String infix) {
  Stack<String> st = Stack();
  String postfix = '';
  int i = 0;
  while (i != infix.length) {
    if (isOperand(infix[i])) {
      postfix = postfix + infix[i];
      i++;
    } else {
      if (st.isEmpty) {
        st.push(infix[i]);
        i++;
      } else if (precedence(infix[i]) > precedence(st.top())) {
        st.push(infix[i]);
        i++;
      } else {
        postfix = postfix + st.pop();
      }
    }
  }
  while (!st.isEmpty) {
    postfix = postfix + st.pop();
  }
  return postfix;
}

void main() {
  String infix = 'a+b*c-d/e';
  print(infix);
  print(infixToPostfix(infix));
}
