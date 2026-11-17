# Lab1Mid — Dart Fundamentals and First Flutter Project

This folder contains the introductory practical work for **CSE 489: Mobile Application Development**. It follows the supplied *Dart Fundamentals in Android Studio • First Flutter Project* lab manual, which is based on Lectures 01–03.

The manual's learning pathway contains seven tasks. The first six use Dart console programs; the seventh creates and runs a basic Flutter application.

## Learning pathway

| Task | Topic | Project | Main source |
|---|---|---|---|
| 01 | Android Studio and Dart warm-up | `dart_lab01` | `bin/task1.dart` |
| 02 | Variables, data types, strings, and I/O | `dart_lab02` | `bin/dart_lab02.dart` |
| 03 | Operators and null safety | `dart_lab03` | `bin/dart_lab03.dart` |
| 04 | Decision making: if/else and switch | `dart_lab04` | `bin/dart_lab04.dart` |
| 05 | Loops, break, and continue | `dart_lab05` | `bin/dart_lab05.dart` |
| 06 | Exception handling | `dart_lab06` | `bin/dart_lab06.dart` |
| 07 | Your first Flutter project | `hello_flutter_lab7` | `lib/main.dart` |

## Folder structure

```text
Lab1Mid/
├── README.md
├── dart_lab01/
│   ├── README.md
│   └── bin/task1.dart
├── dart_lab02/
│   ├── README.md
│   └── bin/dart_lab02.dart
├── dart_lab03/
│   ├── README.md
│   └── bin/dart_lab03.dart
├── dart_lab04/
│   ├── README.md
│   └── bin/dart_lab04.dart
├── dart_lab05/
│   ├── README.md
│   └── bin/dart_lab05.dart
├── dart_lab06/
│   ├── README.md
│   └── bin/dart_lab06.dart
└── hello_flutter_lab7/
    ├── README.md
    └── lib/main.dart
``` 

Each numbered Dart task is a separate command-line project. The Flutter task is a separate Flutter application. Platform folders and generated configuration files are omitted from this simplified tree.

## Environment and setup

The manual requires Android Studio, the Flutter SDK, Android SDK tools, and an Android emulator or configured Android phone. Dart console exercises can be run from an interactive terminal.

Useful checks:

```powershell
flutter doctor
flutter devices
dart --version
flutter --version
```

### Run a Dart task

Open PowerShell at the repository root, move into the task folder, fetch its Dart package dependencies, and run the source file:

```powershell
cd Lab1Mid\dart_lab01
dart pub get
dart run bin\task1.dart
```

For another task, change the folder and filename. For example:

```powershell
cd Lab1Mid\dart_lab04
dart pub get
dart run bin\dart_lab04.dart
```

Tasks that use `stdin.readLineSync()` need an interactive terminal that accepts keyboard input. Running them in a non-interactive output panel may not allow input.

### Run the first Flutter app

```powershell
cd Lab1Mid\hello_flutter_lab7
flutter pub get
flutter run
```

The app's entry point is `lib/main.dart`.

---

## Task 01 — Android Studio and Dart warm-up

**Aim:** Recognize `main()` as the Dart entry point, run a basic program, and use comments and console output.

**Manual exercises:**
- Task A prints a greeting and the course name.
- Task B declares two integers and prints their sum and product.
- Challenge: print sum, difference, product, normal division, and integer division.

**What is in the committed source:** Task A is preserved as a commented example. The active `main()` runs the expanded arithmetic challenge with `a = 12` and `b = 5`.

**Expected active output:**

```text
Sum: 17
Difference: 7
Multiplication: 60
Division: 2.4
Integer Division: 2
```

### Lab report questions

**What is `main()` used for?**  
It is the entry point where execution of a Dart application begins.

**What does `//` indicate?**  
It starts a single-line comment. Dart ignores the comment when executing the program.

**What is the output of Task B?**  
With `a = 12` and `b = 5`, the sum is 17 and the product is 60. The committed challenge also calculates difference 7, division 2.4, and integer division 2.

**Source:** [task1.dart](dart_lab01/bin/task1.dart)

---

## Task 02 — Variables, data types, strings, and I/O

**Aim:** Declare common Dart types, use string interpolation and string methods, and read/display console input.

**Manual exercises:**
- Task A uses `int`, `double`, `String`, `bool`, `var`, `final`, and `const`; it also uses string length and uppercase conversion.
- Task B reads a name and age from the console.
- Challenge: read a name, department, and semester, then print a formatted student profile.

**What is in the committed source:** Task A and Task B remain as commented examples. The active challenge reads a name, department, and semester, then prints a small student profile.

### Lab report questions

**Differentiate `var`, `dynamic`, `final`, and `const`.**
- `var` lets Dart infer a variable's static type from its initial value.
- `dynamic` allows values of different types and postpones many type checks until runtime.
- `final` can be assigned once; its value is determined at runtime.
- `const` declares a compile-time constant.

**What does string interpolation do?**  
It inserts a variable or evaluates an expression inside a string. A simple variable can be written with `$name`; an expression can be placed inside a dollar-brace interpolation.

**Why can `readLineSync()` require null handling?**  
It returns a nullable string because the input stream may have no line available, such as at end-of-file. A fallback with `??` or an explicit null check handles that possibility.

**What happens if age is not numeric?**  
`int.parse()` throws a `FormatException`. The commented Task B does not catch that exception, so invalid input interrupts that run unless error handling is added.

**Source:** [dart_lab02.dart](dart_lab02/bin/dart_lab02.dart)

---

## Task 03 — Operators and null safety

**Aim:** Use arithmetic, comparison, logical, conditional, and null-aware operators.

**Manual exercises:**
- Task A practises arithmetic operators, comparisons, logical AND, and the conditional operator.
- Task B practises a nullable integer and the null-coalescing operators.
- Challenge: use a nullable temperature and print “Not provided” when it is null.

**What is in the committed source:** Task A and Task B are retained as commented examples. The active challenge first prints a fallback for a null temperature, assigns 28.5, and prints the assigned value.

### Lab report questions

**What is the difference between `/` and `~/`?**  
`/` performs division and returns a floating-point result. `~/` performs integer division and returns the quotient without the fractional part.

**What does `%` return?**  
It returns the remainder after division.

**Why use `int?`?**  
The question mark makes the type nullable, so the variable can hold either an integer or `null`.

**Explain both `??=` results in Task B.**  
The first `score ??= 75` assigns 75 because score is null. The second `score ??= 90` does not change the value because score is already 75. The output therefore remains 75.

**Source:** [dart_lab03.dart](dart_lab03/bin/dart_lab03.dart)

---

## Task 04 — Decision making: if/else and switch

**Aim:** Construct conditional branches and use switch for value-based selection.

**Manual exercises:**
- Task A classifies an integer as positive, negative, or zero.
- Task B selects addition, subtraction, or multiplication using a menu and switch.
- Challenge: write a vowel/consonant checker and reject input that is not one alphabetic character.

**What is in the committed source:** Task A and Task B are preserved as commented examples. The active challenge reads one character, trims surrounding whitespace, converts it to lowercase, and uses switch cases to classify vowels.

### Lab report questions

**When is `else if` useful?**  
It checks another condition when the preceding `if` or `else if` condition was false. It is useful when several mutually exclusive conditions must be checked in order.

**What is `default` for in a switch statement?**  
It is the fallback branch when none of the listed case values matches.

**What are the menu outputs for Task B?**  
With `a = 18` and `b = 6`:
- Choice 1: addition produces 24.
- Choice 2: subtraction produces 12.
- Choice 3: multiplication produces 108.
- Any other choice: `Invalid option`.

**Why validate input?**  
Validation prevents unexpected values from being processed and helps handle invalid text or unsupported choices safely.

**Implementation note:** The current vowel/consonant challenge checks that the trimmed input has exactly one character. It does not yet verify that the character is an English alphabet letter. As written, a single digit or punctuation mark reaches the default branch and is labelled “Consonant”. This is a known improvement to make if the full challenge requirement is being assessed.

**Source:** [dart_lab04.dart](dart_lab04/bin/dart_lab04.dart)

---

## Task 05 — Loops, break, and continue

**Aim:** Repeat instructions with loops and control iteration using `break` and `continue`.

**Manual exercises:**
- Task A prints the multiplication table for 7 using a for loop.
- Task B calculates the sum from 1 through 5 using while.
- Task C skips 5 with continue and stops at 9 with break.
- Report exercise iterates over a list of three course names using for-in.
- Challenge sums positive integers until a negative integer is entered, using while and do-while versions.

**What is in the committed source:** Task A, B, C, the for-in example, and the while challenge are retained as commented examples. The active program uses the do-while version of the positive-integer summation challenge.

### Lab report questions

**Which loop suits a known iteration count?**  
A for loop is usually suitable when the number of iterations or the loop range is known.

**How does do-while differ from while?**  
A while loop checks its condition before executing the body. A do-while loop checks after the body, so it executes the body at least once.

**Which value is skipped and where does Task C stop?**  
The loop skips 5 because of continue. It stops when i reaches 9 because break executes before print. The printed values are 1, 2, 3, 4, 6, 7, and 8.

**What does the for-in example do?**  
It visits each item in the list and prints the three course names: CSE 489, CSE 345, and ECO 101.

**Active challenge behaviour:** The committed do-while program adds positive inputs to a running sum and stops after a negative value is entered. Zero is not added to the sum, but the loop continues because its condition is `number >= 0`. The program expects numeric input; non-numeric input is not caught in this exercise.

**Source:** [dart_lab05.dart](dart_lab05/bin/dart_lab05.dart)

---

## Task 06 — Exception handling

**Aim:** Recognize runtime exceptions and use `try`, `on`, `catch`, and `finally`.

**Manual exercises:**
- Task A safely parses integer input and handles FormatException.
- Task B demonstrates division and error handling.
- Challenge: create a calculator that handles invalid numeric input and division by zero.

**What is in the committed source:** Task A and Task B are preserved as commented examples. The active challenge reads two numbers and an arithmetic operator, calculates the selected operation, catches invalid numeric input, handles other errors, and prints a final message.

### Lab report questions

**What is a runtime exception?**  
It is an error condition raised while a program is executing, such as trying to parse invalid numeric input.

**What are the roles of try and catch?**  
The try block contains operations that might throw an exception. A catch block handles an exception that occurs so the program can respond instead of terminating at that point.

**When is on useful?**  
`on` handles a specific exception type, such as `FormatException`. It is useful when different exception types need different handling.

**Does finally execute after an exception?**  
The finally block runs after the try/catch handling whether the try block succeeds or an exception is handled, making it useful for cleanup or final status messages.

**Active calculator behaviour:** The committed challenge supports +, -, *, and /. It catches FormatException for invalid numeric input, checks for a zero denominator before division, handles other exceptions with catch, and prints “Calculator finished.” in finally.

**Source:** [dart_lab06.dart](dart_lab06/bin/dart_lab06.dart)

---

## Task 07 — Your first Flutter project

**Aim:** Create and run a Flutter project, locate the app entry point, and identify common widgets.

**Manual workflow:**

```powershell
flutter doctor
flutter devices
flutter create hello_flutter
cd hello_flutter
flutter run
```

**What is in the committed source:** The project is named `hello_flutter_lab7`. Its `lib/main.dart` launches a Material app with an AppBar and a centered, multi-line message showing the author's name, course code, and a learning statement.

### Simplified project structure

```text
hello_flutter_lab7/
├── android/        Android host/configuration
├── lib/
│   └── main.dart   Main Flutter application
├── test/           Widget test location
└── pubspec.yaml    Project metadata and dependencies
```

### Lab report questions

**What does flutter doctor report?**  
It checks the Flutter development environment and reports the status of Flutter, Android tooling, connected development tools, and any setup issues that may need attention.

**What does flutter devices show?**  
It lists the devices Flutter can currently detect for running an application.

**Where is the app code?**  
The main application entry point is `lib/main.dart`.

**Which widgets appear in the minimal example?**  
MaterialApp, Scaffold, AppBar, Center, and Text.

**Challenge result:** The committed screen displays Gazi Taoshif (Taoshiflex), CSE 489, and “Learning Dart and Flutter!” using Text, Center, Scaffold, and AppBar.

**Source:** [hello_flutter_lab7 — main.dart](hello_flutter_lab7/lib/main.dart)

---

## Submission and evidence checklist

The supplied manual asks students to include the lab number/title, student details, date, aim, concept description, tested source code, console output or app screenshots, answers, a brief conclusion, and debugging notes.

For a complete submission record, add screenshots or terminal output for the actual runs. The source files are committed here; a screenshot is not automatically implied by the presence of source code.

## References

- [Dart language overview](https://dart.dev/language)
- [Dart variables](https://dart.dev/language/variables)
- [Dart null safety](https://dart.dev/null-safety)
- [Dart branches](https://dart.dev/language/branches)
- [Dart loops](https://dart.dev/language/loops)
- [Flutter documentation](https://docs.flutter.dev/)
- [Flutter UI introduction](https://docs.flutter.dev/ui)

---

## Author

**Gazi Taoshif**  
CSE Student | Full Stack Developer  
East West University

This folder documents the introductory Dart and Flutter exercises completed while learning the foundations of mobile application development.

*Learn the fundamentals. Write the code. Run it. Debug it. Keep improving.*
