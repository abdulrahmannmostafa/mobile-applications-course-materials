import 'dart:io';

void main() {
  print("Enter a decimal number:");
  double num = double.parse(stdin.readLineSync()!);

  print("Rounded Number: ${num.round()}");

  String dummyString = "Hello, Dart!";
  print("Immutable String: $dummyString");

  // This will cause an error because strings are immutable
  // dummyString[0] = 'h';

  dummyString = "Hello";
  print("Mutable String after change: $dummyString");

  print("Length of the string: ${dummyString.length}");
  print("Uppercase: ${dummyString.toUpperCase()}");
  print("Lowercase: ${dummyString.toLowerCase()}");
  print("Joined String: ${dummyString + " World!"}");
  print("Reversed String: ${dummyString.split('').reversed.join()}");
}
