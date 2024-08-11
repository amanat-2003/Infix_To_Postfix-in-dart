# Infix to Postfix Conversion in Dart

This project implements the conversion of infix expressions to postfix notation using Dart. The conversion process is crucial for evaluating mathematical expressions efficiently, especially in programming languages and compilers.

## Overview

The provided Dart code converts infix expressions (e.g., `(21 + 34) * 56 - 72 ^ 81 ^ 91`) to postfix notation (e.g., `21 34 + 56 * 72 81 91 ^ ^ -`). Postfix notation, also known as Reverse Polish Notation (RPN), is easier to evaluate computationally because it does not require the understanding of operator precedence rules or parentheses.

### Key Features

- **Infix to Postfix Conversion**: The code handles standard arithmetic operators (`+`, `-`, `*`, `/`, `^`) and parentheses `(` and `)` for grouping.
- **Operand Handling**: The code accurately processes operands, including multi-digit numbers and floating-point values.
- **Stack-based Algorithm**: The conversion is implemented using a stack-based approach, ensuring efficient handling of operators and parentheses.

## Getting Started

### Prerequisites

To run this project, you'll need:

- Dart SDK installed on your machine.

### Running the Code

1. **Clone the repository:**
   ```bash
   git clone https://github.com/amanat-2003/Infix_To_Postfix-in-dart.git
   cd Infix_To_Postfix-in-dart
   ```

2. **Run the code:**
   ```bash
   dart infix_to_postfix.dart
   ```

3. The code will output the original infix expression and its corresponding postfix expression.

### Example

For the input infix expression:

```
((21 + 34) * 56) - 72 ^ 81 ^ 91
```

The output will be:

```
Infix: ((21 + 34) * 56) - 72 ^ 81 ^ 91
Postfix: 21 34 + 56 * 72 81 91 ^ ^ -
```

## Code Explanation

- **`Operandor` Class**: Represents an operand or operator in the expression. It can hold either a numerical value (for operands) or a string value (for operators).
- **`StringOfOperandors` Class**: Manages a list of `Operandor` objects, representing the entire infix or postfix expression.
- **Conversion Functions**:
  - `infixToPostfixOperandors`: Converts the infix expression to postfix using stack operations.
  - `isOperand`: Determines if a character is an operand (numerical value) or an operator.
  - `outStackPrecedenceOperandor` and `inStackPrecedenceOperandor`: Determine the precedence of operators inside and outside the stack to decide the correct order of operations.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, reach out:

- **Email:** [amanatsinghnain@gmail.com](mailto:amanatsinghnain@gmail.com)
- **LinkedIn:** [Amanat Singh](https://www.linkedin.com/in/amanat-coder/)
