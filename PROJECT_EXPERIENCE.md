# Project Experience

## **Infix to Postfix Expression Converter (Dart)**

**Technologies:** Dart, Data Structures & Algorithms, Stack Implementation

**Project Overview:**
Developed a comprehensive mathematical expression converter that transforms infix notation to postfix (Reverse Polish Notation) using stack-based algorithms, demonstrating proficiency in Dart programming and fundamental computer science concepts.

**Key Technical Achievements:**

• **Custom Data Structure Design**: Engineered a specialized `Operandor` class to encapsulate both numeric operands (double precision) and operator symbols, enabling unified handling of heterogeneous expression components

• **Intelligent String Parser**: Implemented a sophisticated string parsing algorithm within `StringOfOperandors` class that tokenizes mathematical expressions, distinguishing between multi-digit floating-point numbers and operators while building a structured list representation

• **Advanced Operator Precedence Handling**: Designed and implemented dual precedence evaluation system:
  - **In-Stack Precedence (ISP)**: Determines priority of operators already on the stack
  - **Out-Stack Precedence (OSP)**: Determines priority of incoming operators
  - Successfully handled complex cases including exponentiation (right-associative, precedence 6), multiplication/division (precedence 3-4), addition/subtraction (precedence 1-2), and parentheses (special precedence 0-7)

• **Iterative Algorithm Implementation**: Developed the core conversion algorithm using stack data structure to evaluate expressions while maintaining O(n) time complexity, where n is the number of tokens in the expression

• **Progressive Enhancement Approach**: Built three progressive versions of the converter:
  1. Basic version: Single-character operands with +, -, *, / operators
  2. Enhanced version: Multi-digit decimal number support
  3. Advanced version: Added parentheses and exponentiation with right-associativity handling

• **Robust Edge Case Management**: Handled parentheses grouping logic, ensuring correct evaluation order by assigning asymmetric precedence values (OSP=7, ISP=0 for '(', and OSP=0 for ')') to trigger appropriate stack operations

**Technical Implementation Details:**
- Utilized stack-based pattern matching for operator comparison
- Implemented character-by-character string parsing with state management for decimal number accumulation
- Developed helper methods (`isOperand()`, `outStackPrecedence()`, `inStackPrecedence()`) for clean separation of concerns
- Created display methods for debugging and visualization of conversion process

**Problem-Solving & Logic:**
Successfully translated the theoretical Shunting Yard algorithm concept into practical Dart code, demonstrating strong understanding of:
- Stack-based expression evaluation
- Operator associativity and precedence rules
- Abstract data type design
- Algorithmic complexity optimization

**Outcome:** Created a production-ready utility capable of parsing and converting complex mathematical expressions including nested parentheses, decimal numbers, and multiple operator types with correct precedence handling, suitable for use in calculator applications, expression evaluators, and compiler design projects.
