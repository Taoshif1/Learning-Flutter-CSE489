# Lab 02 — StatelessWidget, StatefulWidget and setState()

An interactive counter used to practise state changes in Flutter.

## What this project demonstrates
- A `StatefulWidget` and its associated State class
- A counter stored in a mutable integer
- `setState()` to notify Flutter when the counter changes
- Increment, decrement, and reset actions
- A guard that prevents the counter from becoming negative

The current implementation prints “You reached 10” in the Run console when the counter reaches 10. The lab manual asks for a message to be displayed in the app; a conditional Text widget is still needed to satisfy that visible-message requirement.

## Run

```powershell
flutter pub get
flutter run
```

## Source
[lib/main.dart](lib/main.dart)

## Test note
The current `test/widget_test.dart` is an unmodified generated counter test. It imports `MyApp`, while the current source starts with `CounterPage`, and the screen uses Increment rather than the generated plus-icon control. Rewrite the test around CounterPage and its actual buttons.

**Author:** Gazi Taoshif — CSE Student | Full Stack Developer
