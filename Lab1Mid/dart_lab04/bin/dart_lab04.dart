// Task4A

// import 'dart:io';
//
// void main() {
//   stdout.write('Enter an integer: ');
//   int number = int.parse(stdin.readLineSync()!);
//
//   if (number > 0) {
//     print('Positive');
//   } else if (number < 0) {
//     print('Negative');
//   } else {
//     print('Zero');
//   }
// }


// Task4B
// void main() {
//   print('1. Add\n2. Subtract\n3. Multiply');
//
//   int choice = 1;
//   int a = 18, b = 6;
//
//   switch (choice) {
//     case 1:
//       print('Result = ${a + b}');
//       break;
//
//     case 2:
//       print('Result = ${a - b}');
//       break;
//
//     case 3:
//       print('Result = ${a * b}');
//       break;
//
//     default:
//       print('Invalid option');
//   }
// }


// Task4Challenge

import 'dart:io';

void main() {
  stdout.write('Enter one alphabet: ');

  String letter = (stdin.readLineSync() ?? '').trim().toLowerCase();

  if (letter.length != 1) {
    print('Invalid input');
    return;
  }

  switch (letter) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      print('Vowel');
      break;

    default:
      print('Consonant');
  }
}