String basicCalculator(double num1, double num2, String operator) {
  double result;

  // Perform the operation based on the operator
  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      // Handle division by zero
      if (num2 == 0) {
        return 'Error: Division by zero is not allowed.';
      }
      result = num1 / num2;
      break;
    case '%':
      // Handle modulus operation
      if (num2 == 0) {
        return 'Error: Division by zero is not allowed.';
      }
      result = num1 % num2;
      break;
    default:
      return 'Error: Invalid operator. Please use +, -, *, /, or %.';
  }

  return 'Result: $result';
}

// Example of multi-step operations
String multiStepCalculator(List<Map<String, dynamic>> operations) {
  double result = operations[0]['num1'];

  for (var operation in operations) {
    String operator = operation['operator'];
    double num = operation['num2'];

    switch (operator) {
      case '+':
        result += num;
        break;
      case '-':
        result -= num;
        break;
      case '*':
        result *= num;
        break;
      case '/':
        // Handle division by zero
        if (num == 0) {
          return 'Error: Division by zero is not allowed.';
        }
        result /= num;
        break;
      case '%':
        // Handle modulus operation
        if (num == 0) {
          return 'Error: Division by zero is not allowed.';
        }
        result %= num;
        break;
      default:
        return 'Error: Invalid operator. Please use +, -, *, /, or %.';
    }
  }

  return 'Final Result: $result';
}

void main() {
  // Example usage of basic calculator
  print(basicCalculator(10, 5, '+')); // Result: 15.0
  print(basicCalculator(10, 0, '/')); // Error: Division by zero is not allowed.
  print(basicCalculator(10, 5, '%')); // Result: 0.0

  // Example usage of multi-step calculator
  List<Map<String, dynamic>> operations = [
    {'num1': 10, 'operator': '+' , 'num2': 5},
    {'num1': 0, 'operator': '*', 'num2': 3},
    {'num1': 0, 'operator': '/', 'num2': 2},
  ];
  print(multiStepCalculator(operations)); // Final Result: 15.0
}
