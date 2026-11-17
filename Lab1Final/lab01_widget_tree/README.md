# Lab 01 — Building Your First Widget Tree

A basic Flutter application for learning how widgets are composed into a screen.

## What this project demonstrates
- `main()` and `runApp()`
- `StatelessWidget` and a root app widget
- `MaterialApp`, `Scaffold`, and `AppBar`
- `Center` and `Column` for layout
- `Text`, `SizedBox`, and `Icon`
- Parent-child relationships in a widget tree

The active screen displays two text messages and a widgets icon. The source also keeps the earlier one-text starter example as a commented reference.

## Run

```powershell
flutter pub get
flutter run
```

## Source
[lib/main.dart](lib/main.dart)

## Test note
The current `test/widget_test.dart` is the generated counter smoke test. It expects a counter and plus icon that are not part of this lab screen. Update the test to assert the actual text and icon before using it as verification.

**Author:** Gazi Taoshif — CSE Student | Full Stack Developer
