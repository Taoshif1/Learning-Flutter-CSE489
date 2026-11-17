# Learning Flutter & Dart — CSE 489

A learning repository documenting my progress with **Dart and Flutter** while studying **CSE 489: Mobile Application Development** at **East West University**.

This repository keeps my early demos, a small interactive student-profile exercise, the introductory Dart/Flutter lab work, and the later six-part Flutter widget lab series in one place. Each substantial exercise is kept in its own folder so it can be opened and run independently.

> The goal is to show the learning process clearly: start with small examples, understand language fundamentals, practise UI composition, and gradually work with state and interaction.

## Author

**Gazi Taoshif**  
**CSE Student | Full Stack Developer**  
East West University

- GitHub: [Taoshif1](https://github.com/Taoshif1)
- Repository: [Learning-Flutter-CSE489](https://github.com/Taoshif1/Learning-flutter-CSE489)

---

## Repository overview

| Folder | Role | What it contains |
|---|---|---|
| `first_flutter_app` | First demo | A minimal Flutter launch screen and basic widget structure. |
| `cse489_first_app` | UI practice/demo | Five small exercises covering text, layout, alignment, and button interaction. |
| `student_profile_app` | Earlier mini task | An interactive profile page used to explore StatefulWidget, setState(), and conditional UI before Lab1Final. |
| `Lab1Mid` | Introductory lab manual | Six Dart console tasks followed by a first Flutter app task. |
| `Lab1Final` | Flutter widget lab series | Six separate Flutter projects covering widgets, state, lifecycle, BuildContext, layout, and Material/Cupertino components. |

## Full project tree

The tree below shows the learning projects, source entry points, tests, and documentation. Generated platform files and build output are intentionally collapsed.

```text
Learning-Flutter-CSE489/
├── README.md
│
├── first_flutter_app/
│   ├── README.md
│   ├── lib/main.dart
│   ├── test/widget_test.dart
│   └── pubspec.yaml
│
├── cse489_first_app/
│   ├── README.md
│   ├── lib/main.dart
│   ├── test/widget_test.dart
│   └── pubspec.yaml
│
├── student_profile_app/
│   ├── README.md
│   ├── lib/main.dart
│   ├── test/widget_test.dart
│   └── pubspec.yaml
│
├── Lab1Mid/
│   ├── README.md
│   ├── dart_lab01/README.md + bin/task1.dart
│   ├── dart_lab02/README.md + bin/dart_lab02.dart
│   ├── dart_lab03/README.md + bin/dart_lab03.dart
│   ├── dart_lab04/README.md + bin/dart_lab04.dart
│   ├── dart_lab05/README.md + bin/dart_lab05.dart
│   ├── dart_lab06/README.md + bin/dart_lab06.dart
│   └── hello_flutter_lab7/
│       ├── README.md
│       └── lib/main.dart
│
└── Lab1Final/
    ├── README.md
    ├── lab01_widget_tree/
    │   ├── README.md
    │   ├── lib/main.dart
    │   └── test/widget_test.dart
    ├── lab2_statefulwidget/
    │   ├── README.md
    │   ├── lib/main.dart
    │   └── test/widget_test.dart
    ├── lab3_widget_lifecycle/
    │   ├── README.md
    │   ├── lib/main.dart
    │   └── test/widget_test.dart
    ├── lab4_buildcontext/
    │   ├── README.md
    │   ├── lib/main.dart
    │   └── test/widget_test.dart
    ├── lab5_layout_widgets/
    │   ├── README.md
    │   ├── lib/main.dart
    │   └── test/widget_test.dart
    └── lab6_material_cupertino/
        ├── README.md
        ├── lib/main.dart
        └── test/widget_test.dart
```

Each Flutter project also contains its standard platform folders and configuration files. Those generated files are omitted from this overview.

---

## Learning path

### 1. First Flutter demo — `first_flutter_app`

A minimal screen used to confirm the Flutter setup and understand the basic app structure.

**Practised:** `main()`, `runApp()`, StatelessWidget, MaterialApp, Scaffold, AppBar, Center, and Text.

[Open first_flutter_app README](first_flutter_app/README.md)

### 2. CSE489 UI exercises — `cse489_first_app`

A collection of small commented/active practice exercises. Exercise 05 is the active screen.

**Practised:** text styling, Column, Row, Card, Padding, CircleAvatar, Expanded, alignment, buttons, callbacks, Builder, and SnackBar.

[Open cse489_first_app README](cse489_first_app/README.md)

### 3. Earlier mini task — `student_profile_app`

A small interactive student profile task completed before the structured Lab1Final series.

**Practised:** StatefulWidget, setState(), follow/unfollow state, a changing follower count, conditional details, profile layout, and SnackBar feedback.

[Open student_profile_app README](student_profile_app/README.md)

### 4. Introductory lab — `Lab1Mid`

Based on the supplied CSE 489 manual *Dart Fundamentals in Android Studio • First Flutter Project*.

It contains seven tasks:
1. Android Studio and Dart warm-up.
2. Variables, data types, strings, and console I/O.
3. Operators and null safety.
4. Decision making with if/else and switch.
5. Loops, break, and continue.
6. Exception handling.
7. First Flutter project.

The folder-level README includes task summaries, the manual's report questions with answers, run commands, and notes about which examples are active or commented in the committed code.

[Open Lab1Mid README](Lab1Mid/README.md)

### 5. Structured Flutter widget labs — `Lab1Final`

A six-project sequence that builds practical understanding of Flutter's widget system.

| Lab | Topic | Main concepts |
|---|---|---|
| 01 | Building Your First Widget Tree | MaterialApp, Scaffold, AppBar, Text, Column, Icon |
| 02 | StatelessWidget, StatefulWidget and setState() | State objects, counter, increment/decrement/reset |
| 03 | StatefulWidget Lifecycle | initState, didChangeDependencies, didUpdateWidget, build, dispose |
| 04 | Widget Tree, Element Tree and BuildContext | Builder, BuildContext, ScaffoldMessenger, SnackBar |
| 05 | Layout Widgets and Spacing | Row, Column, Expanded, Padding, SizedBox, Stack, scrolling |
| 06 | Material and Cupertino Components | Material widgets, Cupertino page, navigation bar, button, alert dialog |

[Open Lab1Final README](Lab1Final/README.md)

Each lab also has its own README beside its source code, describing that project's objective, implementation, and run command.

---

## Tech stack and tools

- **Language:** Dart
- **UI framework:** Flutter
- **IDE:** Android Studio
- **Testing and execution:** Flutter CLI, Dart CLI, Android Emulator
- **Version control:** Git and GitHub

The Flutter projects keep application code under `lib/` and dependencies/configuration in `pubspec.yaml`. The Dart console exercises keep source files under each task project's `bin/` directory.

## Environment setup

Install and configure the Flutter SDK, Android Studio, Android SDK tools, and an emulator or Android device.

Check the environment:

```powershell
flutter doctor
flutter devices
dart --version
flutter --version
```

The introductory manual notes that console input requires an interactive terminal that accepts stdin.

## Run a project

Each Flutter app is an independent project. Open a terminal at the repository root, enter the desired folder, fetch dependencies, and run it.

Example:

```powershell
cd student_profile_app
flutter pub get
flutter run
```

For a Dart console task:

```powershell
cd Lab1Mid\dart_lab02
dart pub get
dart run bin\dart_lab02.dart
```

For the first Flutter task inside Lab1Mid:

```powershell
cd Lab1Mid\hello_flutter_lab7
flutter pub get
flutter run
```

For the six Lab1Final projects, use the individual project folders documented in [Lab1Final/README.md](Lab1Final/README.md).

## Testing notes

Some projects contain generated widget tests that have not yet been adapted to their current screens.

- `cse489_first_app/test/widget_test.dart` is customized for the active Exercise 05 screen. It checks the heading, taps the Say Hello button, and looks for the expected SnackBar message. This documents the test's intent; it does not claim the test was run here.
- `first_flutter_app/test/widget_test.dart` is still the generated counter increment test, but the current app is a static greeting screen.
- `student_profile_app/test/widget_test.dart` is also the generated counter test, while the current app is a student profile screen.
- All six `Lab1Final` projects still contain generated counter smoke tests. They do not match the current lab implementations: Lab 01 has no counter or plus button, and Labs 02–06 do not expose the generated test's expected `MyApp` root class. Rewrite these tests to match each lab before relying on `flutter test`.
- The Lab1Mid Dart console tasks should be run from an interactive terminal for the input-based exercises.

The presence of a test file does not mean that it has been run or that it currently passes.

## Current scope

This repository documents foundational practice and coursework exercises. It is not one combined production application. The introductory examples do not include a backend, database, authentication service, or API integration.

The integrated Student Academic Dashboard described in the Lab1Final manual is a separate next exercise; it should be added as its own project when implemented.

## Learning goals

- Strengthen Dart syntax and programming fundamentals.
- Understand Flutter's widget composition and layout system.
- Practise state updates and lifecycle methods.
- Use BuildContext and common Material/Cupertino components.
- Improve debugging, testing, and project organization.
- Build more complete Flutter applications as the learning path continues.

## Author

**Gazi Taoshif**  
**CSE Student | Full Stack Developer**  
East West University

GitHub: [@Taoshif1](https://github.com/Taoshif1)

---

*Learning step by step. Building through practice. Improving with every project.*
