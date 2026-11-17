# CSE 489 Flutter & Dart Practice

A small collection of exploratory Flutter UI exercises created while learning the fundamentals of Flutter and Dart for **CSE 489: Mobile Application Development** at East West University.

This folder is a practice/demo project. It is separate from the structured introductory manual work in `Lab1Mid` and the six widget labs in `Lab1Final`.

## Exercises in main.dart

The source file keeps earlier exercises as commented examples and leaves Exercise 05 active.

| Exercise | Concepts practised | Current source status |
|---|---|---|
| 01 — Basic text | MaterialApp, Scaffold, Text, text styling | Commented example |
| 02 — Vertical layout | Center, Column, Icon, SizedBox, spacing | Commented example |
| 03 — Profile row/card | Row, Column, Card, Padding, CircleAvatar, Expanded | Commented example |
| 04 — Alignment | mainAxisAlignment, crossAxisAlignment, Container, Row, Column | Commented example |
| 05 — Button interaction | Builder, ElevatedButton, OutlinedButton, TextButton, callbacks, SnackBar | Active implementation |

## Active screen: Exercise 05

The current UI includes:
- A heading: “Exercise 05: Button Interaction”.
- A **Say Hello** ElevatedButton that displays “Hello, Taoshif!” in a SnackBar.
- A **Show Lesson Message** OutlinedButton that displays “I am learning Flutter!” in a SnackBar.
- A disabled TextButton for comparison.

The code uses a Builder-provided BuildContext to access ScaffoldMessenger from within the body.

## Widget test

The project includes a custom widget test in `test/widget_test.dart`. It pumps PracticeApp, checks the Exercise 05 heading and Say Hello button, taps the button, and checks that the expected SnackBar message appears.

Run the test with:

```powershell
flutter test
```

## Run locally

```powershell
cd cse489_first_app
flutter pub get
flutter run
```

## Project structure

```text
cse489_first_app/
├── README.md
├── lib/
│   └── main.dart
├── test/
│   └── widget_test.dart
├── android/      Android host configuration
├── ios/          iOS host configuration
├── web/          Web host files
├── windows/      Windows host files
├── macos/        macOS host files
└── pubspec.yaml
```

## Scope and next steps

These exercises focus on basic widget composition, layout, alignment, and callbacks. They are not intended to represent a complete mobile application. The structured projects in `Lab1Final` continue the learning sequence with state, lifecycle, BuildContext, layout, and Material/Cupertino components.

## Author

**Gazi Taoshif**  
CSE Student | Full Stack Developer  
East West University

---

*Practice, experiment, keep the earlier examples, and build on the fundamentals.*
