// Task 02A
// void main() {
//   int semester = 5;
//   double cgpa = 3.65;
//   String student = 'A student';
//   bool enrolled = true;
//   var course = 'CSE 489';
//   final department = 'CSE';
//   const university = 'Example University';
//
//   print('Student: $student');
//   print('Course: $course, Semester: $semester');
//   print('CGPA: $cgpa, Enrolled: $enrolled');
//   print('Department: $department');
//   print('University: $university');
//   print('Length: ${course.length}');
// }

// Task2B
// import 'dart:io';
//
// void main(){
//   stdout.write("Enter your name-");
//   String name = stdin.readLineSync() ?? 'N/A';
//
//   stdout.write("Enter your age-");
//   int age = int.parse(stdin.readLineSync()!);
//
//   print("Hello $name, you're age is $age years");
// }


// Task2CT
import 'dart:io';

void main(){
  stdout.write('Enter your name: ');
  String name = stdin.readLineSync() ?? '';

  stdout.write('Enter your department: ');
  String department = stdin.readLineSync() ?? '';

  stdout.write('Enter your semester: ');
  int semester = int.parse(stdin.readLineSync()!);

  print('\nStudent Profile');
  print('Name: $name');
  print('Department: $department');
  print('Semester: $semester th');
}










