# Task 02 — Variables, Data Types, Strings, and I/O

This Dart console project practises common variable types, string operations, and terminal input.

## Concepts
- `int`, `double`, `String`, and `bool`
- Type inference with `var`
- One-time assignment with `final`
- Compile-time constants with `const`
- String length, uppercase conversion, and interpolation
- Console input with `stdin.readLineSync()`
- Null fallback using `??`

## Current implementation
The manual's type/string example and basic name/age input example are retained as commented examples. The active challenge reads a student's name, department, and semester, then prints a formatted student profile.

The semester is parsed with `int.parse()`. Non-numeric input currently raises a FormatException because this challenge version does not include input-error handling.

## Run

```powershell
dart pub get
dart run bin\dart_lab02.dart
```

Run from an interactive terminal because the program waits for keyboard input.

## Source
[bin/dart_lab02.dart](bin/dart_lab02.dart)

See the [Lab1Mid overview](../README.md#task-02--variables-data-types-strings-and-io) for report questions and explanations.

**Author:** Gazi Taoshif — CSE Student | Full Stack Developer
