import 'dart:io';

// This is a dummy comment ^^

/*
  This is a dummy a multi-line comment also
*/

void main() {
  // Type is inferred automatically in the compile-time
  var value = 50;

  print('The value is: $value');

  // Once type is inferred, it cannot be changed

  // value = 'Hello';

  dynamic dynamicValue = 100;

  print('The dynamic value is: $dynamicValue');

  // Type can be changed for dynamic type as it happens in runtime

  dynamicValue = 'Hello';
  print('The dynamic value is: $dynamicValue');

  const constantValue = 200;

  print('The constant value is: $constantValue');

  // This will cause a compile-time error

  // constantValue = 300;

  num numberValue = 10;

  print('The number value is: $numberValue');

  numberValue = 20.5;

  print('The number value is: $numberValue');

  String stringValue = 'Hello';

  print('The string value is: $stringValue');

  bool booleanValue = true;

  print('The boolean value is: $booleanValue');
}
