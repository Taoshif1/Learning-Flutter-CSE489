// Task5A

// void main() {
//   int number = 7;
//
//   for (int i = 1; i <= 10; i++) {
//     print('$number x $i = ${number * i}');
//   }
// }

// Task5B

// void main() {
//   int i = 1;
//   int sum = 0;
//
//   while (i <= 5) {
//     sum += i;
//     i++;
//   }
//
//   print('Sum = $sum');
// }

// Task5C

// void main() {
//   for (int i = 1; i <= 10; i++) {
//     if (i == 5) {
//       continue;
//     }
//
//     if (i == 9) {
//       break;
//     }
//
//     print(i);
//   }
// }


// LabReportQuestion

// void main() {
//   List<String> courses = [
//     'CSE 489',
//     'CSE 345',
//     'ECO 101',
//   ];
//
//   for (String course in courses) {
//     print(course);
//   }
// }


// Task5Challenge

// import 'dart:io';
//
// void main() {
//   int sum = 0;
//
//   while (true) {
//     stdout.write('Enter an integer: ');
//
//     int number = int.parse(stdin.readLineSync()!);
//
//     if (number < 0) {
//       break;
//     }
//
//     if (number > 0) {
//       sum += number;
//     }
//   }
//
//   print('Sum = $sum');
// }

// do-while version
import 'dart:io';

void main() {
  int sum = 0;
  int number;

  do {
    stdout.write('Enter an integer: ');
    number = int.parse(stdin.readLineSync()!);

    if (number > 0) {
      sum += number;
    }
  } while (number >= 0);

  print('Sum = $sum');
}