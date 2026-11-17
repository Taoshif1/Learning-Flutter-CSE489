# Student Profile App

A small Flutter practice task completed before the six-project `Lab1Final` series. The purpose was to explore Dart and Flutter fundamentals by building a simple student profile screen with interactive controls.

This is an introductory learning exercise, not a production application.

## What the app demonstrates

- A Material 3 application theme using `MaterialApp` and `ThemeData`.
- A profile page built as a `StatefulWidget`.
- A `CircleAvatar`, `Card`, `Column`, `Row`, `Padding`, and `SingleChildScrollView`.
- Follow and Unfollow interaction.
- A follower count that changes when the follow state changes.
- Show More / Show Less behaviour using conditional UI.
- A Contact button that displays a SnackBar through `ScaffoldMessenger`.

## State and interactions

The page stores three values in its State object:

| Field | Purpose |
|---|---|
| `isFollowing` | Tracks whether the user is following the profile. |
| `followers` | Stores the displayed follower count, initially 120. |
| `showMore` | Controls whether additional profile details are visible. |

The `toggleFollow()` and `toggleDetails()` methods use `setState()` so the screen updates after interaction. The Contact button displays “Contact request sent!” as a SnackBar.

## Project structure

```text
student_profile_app/
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
cd student_profile_app
flutter pub get
flutter run
```

Run the app on an Android emulator or connected device.

## Testing note

The current `test/widget_test.dart` is still the generated counter sample and expects a counter value and a plus button. Those elements are not part of the current Student Profile UI. Update that test to match the profile screen before treating `flutter test` as a valid verification of this project.

## Scope

This task helped practise StatefulWidget, setState(), conditional rendering, button callbacks, and simple Material layout. It does not use a backend, database, authentication, or remote API.

## Author

**Gazi Taoshif**  
CSE Student | Full Stack Developer  
East West University

```
Small practice project before moving into the structured Lab1Final widget exercises.
```
