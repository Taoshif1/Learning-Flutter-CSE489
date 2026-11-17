# First Flutter App

A minimal Flutter demo created to confirm that the Flutter project setup works and to practise the basic application entry point and screen structure.

## What it demonstrates

- Dart `main()` as the app entry point.
- `runApp()` to attach the root widget.
- A root `StatelessWidget` named `MyApp`.
- `MaterialApp` as the application wrapper.
- `Scaffold` and `AppBar` for the page layout.
- `Center` and `Text` for the main screen content.

The current screen shows the message **“Hello Taoshif! Flutter is working.”**

This is intentionally a small demo, not a complete application or a structured lab assignment.

## Project structure

```text
first_flutter_app/
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

## Run locally

```powershell
cd first_flutter_app
flutter pub get
flutter run
```

## Testing note

The current `test/widget_test.dart` is the generated counter increment sample. The current app does not contain a counter or plus button, so the test no longer describes the active screen. Replace it with a test for the greeting screen before relying on `flutter test`.

## Author

**Gazi Taoshif**  
CSE Student | Full Stack Developer

```
A small starting point in the Dart and Flutter learning process.
```
