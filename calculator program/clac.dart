import 'dart:io';

void calculator(String operator, double num1, double num2) {
  double result;

  if (operator == "+") {
    result = num1 + num2;
    print(result.toStringAsFixed(3));
  } else if (operator == "-") {
    result = num1 - num2;
    print(result.toStringAsFixed(3));
  } else if (operator == "*") {
    result = num1 * num2;
    print(result.toStringAsFixed(3));
  } else if (operator == "/") {
    if (num2 != 0) {
      result = num1 / num2;
      print(result.toStringAsFixed(3));
    } else {
      print("Error: Division by zero");
    }
  } else {
    print("$operator is not a valid operator");
  }
}

void main() {
  stdout.write("Enter an operator (+ - * /): ");
  String operator = stdin.readLineSync()!;

  stdout.write("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  calculator(operator, num1, num2);
}
