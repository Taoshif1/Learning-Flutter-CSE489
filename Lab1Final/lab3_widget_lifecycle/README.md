# Lab 03 — Exploring the StatefulWidget Lifecycle

A Flutter project that logs lifecycle callbacks to the Android Studio Run console.

## Lifecycle methods
- `initState()`
- `didChangeDependencies()`
- `didUpdateWidget()`
- `build()`
- `dispose()`

## What this project demonstrates
The Rebuild button increments a value using setState(), causing build() to run again. A Navigate Away button was added as a practical test: it uses Navigator.pushReplacement() to replace the lifecycle page with FinishedPage. When the old page is permanently removed, dispose() is logged.

The supplied starter code includes didUpdateWidget(), but the current screen does not receive a new parent configuration. Pressing Rebuild alone does not trigger didUpdateWidget().

## Run and observe

```powershell
flutter pub get
flutter run
```

Watch the Run console after launch, after pressing Rebuild, and after pressing Navigate Away.

## Source
[lib/main.dart](lib/main.dart)

## Test note
The current `test/widget_test.dart` is the generated counter smoke test and expects a `MyApp` class and a plus icon that are not part of the current source. Replace it with lifecycle-specific tests if automated coverage is needed.

**Author:** Gazi Taoshif — CSE Student | Full Stack Developer
