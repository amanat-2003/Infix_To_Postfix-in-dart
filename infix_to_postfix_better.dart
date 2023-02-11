import 'dart:io';

import 'package:stack/stack.dart';

bool isOperand(String c) {
  if (c == '+' || c == '-' || c == '*' || c == '/') {
    return false;
  } else {
    return true;
  }
}

int precedenceOperandor(Operandor c) {
  if (c.operator_val == '+' || c.operator_val == '-')
    return 1;
  else if (c.operator_val == '*' || c.operator_val == '/')
    return 2;
  else
    return 0;
}

StringOfOperandors infixToPostfixOperandors(StringOfOperandors infix) {
  Stack<Operandor> st = Stack();
  StringOfOperandors postfix = StringOfOperandors.fromString('');
  int i = 0;
  while (i != infix.length) {
    if (infix.at(i).isOperand) {
      postfix.insertAtEnd(infix.at(i));
      // postfix = postfix + infix.at(i);
      i++;
    } else {
      if (st.isEmpty) {
        st.push(infix.at(i));
        i++;
      } else if (precedenceOperandor(infix.at(i)) >
          precedenceOperandor(st.top())) {
        st.push(infix.at(i));
        i++;
      } else {
        postfix.insertAtEnd(st.pop());
        // postfix = postfix + st.pop();
      }
    }
  }
  while (!st.isEmpty) {
    postfix.insertAtEnd(st.pop());
    // postfix = postfix + st.pop();
  }
  return postfix;
}

class Operandor {
  bool isOperand;
  double double_val;
  String operator_val;

  Operandor({this.isOperand, this.double_val, this.operator_val});
}

class StringOfOperandors {
  List<Operandor> value = [];
  StringOfOperandors(this.value);
  StringOfOperandors.fromString(String str) {
    int i = 0;
    Operandor component =
        Operandor(isOperand: true, double_val: 0, operator_val: '');
    String double_val_str = '';
    while (i != str.length) {
      if (isOperand(str[i])) {
        component = Operandor(
            isOperand: true,
            double_val: component.double_val,
            operator_val: '');
        double_val_str = double_val_str + str[i];
        component.double_val = double.parse(double_val_str);
        i++;
        if (i == str.length) {
          value.add(component);
        }
      } else {
        value.add(component);
        double_val_str = '';
        component =
            Operandor(isOperand: false, double_val: 0, operator_val: str[i]);
        value.add(component);
        i++;
      }
    }
  }

  void insertAtEnd(Operandor item) {
    value.add(item);
  }

  int get length {
    return value.length;
  }

  Operandor at(int idx) {
    return value[idx];
  }

  void display() {
    for (Operandor i in value) {
      if (i.isOperand) {
        // print(i.double_val);
        stdout.write(i.double_val);
      } else {
        // print(i.operator_val);
        stdout.write(i.operator_val);
      }
    }
  }
}

void main() {
  String infix = '21.31+34.8*56.756-72/81';
  print(infix);
  StringOfOperandors infix_str_of_operandors =
      StringOfOperandors.fromString(infix);
  infix_str_of_operandors.display();
  print("");
  infixToPostfixOperandors(infix_str_of_operandors).display();
  // print(infixToPostfix(infix));
}
