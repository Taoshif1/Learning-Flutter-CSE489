# Lab 05 — Layout Widgets and Spacing

A scrollable student profile screen that practises Flutter layout composition.

## What this project demonstrates
- `SingleChildScrollView` for vertical scrolling
- `Row` and `Column` for arranging content
- `CircleAvatar` for a profile placeholder
- `Stack` and `Positioned` for the status indicator overlay
- `Expanded` for sharing available row width
- `Padding`, `SizedBox`, `Card`, and a reusable `infoCard()` helper

The page contains profile, academic, contact, and additional-information sections. It is intended to be tested by scrolling on a narrow emulator screen.

## Run

```powershell
flutter pub get
flutter run
```

## Source
[lib/main.dart](lib/main.dart)

## Test note
The current `test/widget_test.dart` is still the generated counter smoke test and does not match the StudentProfilePage UI. Replace it with tests for visible profile content and scrolling if automated test coverage is required.

**Author:** Gazi Taoshif — CSE Student | Full Stack Developer
