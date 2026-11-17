# Task 04 — Decision Making: if/else and switch

This project introduces conditional branching and value-based selection in Dart.

## Concepts
- `if`, `else if`, and `else`
- `switch`, `case`, and `default`
- Reading console input
- Basic input validation

## Current implementation
The positive/negative/zero classification example and arithmetic menu example are retained as commented code. The active challenge asks for one alphabetic character and uses switch to identify a vowel or consonant.

**Known validation limitation:** the active code rejects input whose trimmed length is not exactly one, but does not verify that the remaining character is a letter. A single digit or punctuation mark therefore reaches the default case and is reported as a consonant.

## Run

```powershell
dart pub get
dart run bin\dart_lab04.dart
```

Run it in an interactive terminal and try vowels, consonants, multiple characters, digits, and punctuation.

## Source
[bin/dart_lab04.dart](bin/dart_lab04.dart)

See the [Lab1Mid overview](../README.md#task-04--decision-making-ifelse-and-switch) for the report questions and expected menu results.

**Author:** Gazi Taoshif — CSE Student | Full Stack Developer
