import 'dart:io';

void arithmeticOperations() {
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Addition: ${num1 + num2}");
  print("Subtraction: ${num1 - num2}");
  print("Multiplication: ${num1 * num2}");
  print("Division: ${num1 / num2}");
  print("Modulus: ${num1 % num2}");
}

void logicalOperations() {
  int a = 10, b = 5;

  print("a == b: ${a == b}");
  print("a != b: ${a != b}");
  print("a > b: ${a > b}");
  print("a < b: ${a < b}");
  print("a >= b: ${a >= b}");
  print("a <= b: ${a <= b}");
  print("a ~/ b: ${a ~/ b}");
  print("a / b: ${a / b}");

  bool x = true, y = false;
  print("x && y: ${x && y}");
  print("x || y: ${x || y}");
  print("!x: ${!x}");
}

void main() {
  print("Arithmetic Operations:");
  arithmeticOperations();

  print("\nLogical Operations:");
  logicalOperations();
}
