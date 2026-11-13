// Task6A

// import 'dart:io';
//
// void main() {
//   stdout.write('Enter an integer: ');
//
//   try {
//     int value = int.parse(stdin.readLineSync()!);
//
//     print('You entered $value');
//   } on FormatException {
//     print('Invalid integer input.');
//   } catch (e) {
//     print('Unexpected error: $e');
//   } finally {
//     print('Input operation finished.');
//   }
// }


// Task6B
//
// void main() {
//   int a = 24;
//   int b = 0;
//
//   try {
//     int result = a ~/ b;
//
//     print('Result = $result');
//   } on UnsupportedError {
//     print('Cannot divide by zero.');
//   } catch (e) {
//     print('Error: $e');
//   } finally {
//     print('Calculation completed.');
//   }
// }


// Task6Challenge

import 'dart:io';

void main() {
  try {
    stdout.write('Enter first number: ');
    double a = double.parse(stdin.readLineSync()!);

    stdout.write('Enter second number: ');
    double b = double.parse(stdin.readLineSync()!);

    stdout.write('Enter operator (+, -, *, /): ');
    String operator = stdin.readLineSync() ?? '';

    switch (operator) {
      case '+':
        print('Result = ${a + b}');
        break;

      case '-':
        print('Result = ${a - b}');
        break;

      case '*':
        print('Result = ${a * b}');
        break;

      case '/':
        if (b == 0) {
          print('Cannot divide by zero.');
        } else {
          print('Result = ${a / b}');
        }
        break;

      default:
        print('Invalid operator.');
    }
  } on FormatException {
    print('Invalid numeric input.');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Calculator finished.');
  }
}
