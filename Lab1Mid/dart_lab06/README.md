# Task 06 — Exception Handling

This project practises handling runtime errors in Dart console programs.

## Concepts
- `try` for statements that may throw
- `on` for handling a specific exception type
- `catch` for handling other exceptions
- `finally` for code that should run after try/catch handling
- `FormatException` from invalid numeric parsing
- Division-by-zero checks

## Current implementation
The manual's safe-integer-parsing example and division example are retained as commented code. The active challenge is a small console calculator that reads two numbers and an operator (+, -, *, /).

It handles non-numeric input with FormatException, checks the denominator before division, handles other errors with catch, and prints a completion message in finally.

## Run

```powershell
dart pub get
dart run bin\dart_lab06.dart
```

Run from an interactive terminal. Try valid numbers, invalid text, all four operators, and division by zero.

## Source
[bin/dart_lab06.dart](bin/dart_lab06.dart)

See the [Lab1Mid overview](../README.md#task-06--exception-handling) for the report questions and explanations.

**Author:** Gazi Taoshif — CSE Student | Full Stack Developer
