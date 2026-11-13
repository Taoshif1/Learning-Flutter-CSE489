// Task3A

// void main() {
//   int a = 17;
//   int b = 4;
//
//   print('a + b = ${a + b}');
//   print('a - b = ${a - b}');
//   print('a * b = ${a * b}');
//   print('a / b = ${a / b}');
//   print('a ~/ b = ${a ~/ b}');
//   print('a % b = ${a % b}');
//
//   print('a > b: ${a > b}');
//
//   print(
//     '(a > 10) && (b < 5): ${(a > 10) && (b < 5)}',
//   );
//
//   print('Status: ${a >= 10 ? 'Pass' : 'Review'}');
// }


// Task3B

// void main() {
//   int? score;
//
//   print(score ?? 'No score entered');
//
//   score ??= 75;
//   print('Score = $score');
//
//   score ??= 90;
//   print('Score remains = $score');
// }


// Task3Challenge

void main(){
  double? temperature;

  print(temperature ?? 'Not provided');

  temperature = 28.5;

  print(temperature ?? 'Not provided');

}

