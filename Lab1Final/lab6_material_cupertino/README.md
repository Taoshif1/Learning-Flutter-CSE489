# Lab 06 — Material and Cupertino Interface Components

A Flutter project containing a Material student-profile screen and a separate Cupertino-style demonstration screen.

## Material screen
- `MaterialApp` and `Scaffold`
- `AppBar` with an action icon
- `CircleAvatar`
- `Card` and `Divider`
- `ListTile` for grouped profile information
- `FloatingActionButton` with SnackBar feedback

## Cupertino screen
- `CupertinoPageScaffold`
- `CupertinoNavigationBar`
- `SafeArea`
- `CupertinoButton.filled`
- `CupertinoAlertDialog` and `CupertinoDialogAction`

Navigation connects the two screens inside one MaterialApp root. The Cupertino dialog's Close action dismisses the dialog, and the return button navigates back to the Material profile.

## Run

```powershell
flutter pub get
flutter run
```

## Source
[lib/main.dart](lib/main.dart)

## Test note
The current `test/widget_test.dart` is an unmodified generated counter test. It imports `MyApp` and looks for a counter and plus icon, which do not match the current Lab6App, MaterialProfilePage, and CupertinoDemoPage implementation. Rewrite the test to cover the actual Material and Cupertino interactions.

**Author:** Gazi Taoshif — CSE Student | Full Stack Developer
