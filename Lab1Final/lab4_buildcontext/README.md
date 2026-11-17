# Lab 04 — Widget Tree, Element Tree and BuildContext

A Flutter screen demonstrating BuildContext and SnackBar feedback.

## What this project demonstrates
- The difference between Widget, Element, and RenderObject roles
- BuildContext as a handle to a location in the Element Tree
- `Builder` to obtain a context below the Scaffold
- `ScaffoldMessenger.of(context)` to access the nearest ScaffoldMessenger
- Two buttons with different SnackBar messages
- Three-second SnackBar durations

The first button displays “Welcome to Lab 04!” and the second displays “Hello from the Second Button!”.

## Run

```powershell
flutter pub get
flutter run
```

## Source
[lib/main.dart](lib/main.dart)

## Test note
The current `test/widget_test.dart` is the generated counter smoke test. It imports `MyApp` and expects counter controls, which do not match the current ContextDemo screen. Rewrite it to test both buttons and SnackBar messages before relying on automated test results.

**Author:** Gazi Taoshif — CSE Student | Full Stack Developer
