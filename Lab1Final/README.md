# CSE489 — Flutter Application Development
## Lab 01–06 | Learning Repository

This folder contains six individual Flutter practical projects completed as part of the **CSE489 Flutter Application Development** coursework at **East West University**.

The labs are organized as separate Flutter projects so each exercise can be opened, run, tested, and studied independently. The work follows the topics and practical requirements in the course laboratory manual.

> **Learning approach:** understand the concept, implement the example, test the behaviour on an Android emulator, and keep the source code organized for later reference.

---

## Table of Contents

- [Repository Structure](#repository-structure)
- [Environment and Requirements](#environment-and-requirements)
- [How to Run a Lab](#how-to-run-a-lab)
- [Lab 01 — Building Your First Widget Tree](#lab-01--building-your-first-widget-tree)
- [Lab 02 — StatelessWidget-StatefulWidget-and-setstate](#lab-02--statelesswidget-statefulwidget-and-setstate)
- [Lab 03 — Exploring the StatefulWidget Lifecycle](#lab-03--exploring-the-statefulwidget-lifecycle)
- [Lab 04 — Widget Tree, Element Tree and BuildContext](#lab-04--widget-tree-element-tree-and-buildcontext)
- [Lab 05 — Layout Widgets and Spacing](#lab-05--layout-widgets-and-spacing)
- [Lab 06 — Material and Cupertino Interface Components](#lab-06--material-and-cupertino-interface-components)
- [Concepts Practised Across the Labs](#concepts-practised-across-the-labs)
- [Troubleshooting and Important Observations](#troubleshooting-and-important-observations)
- [Integrated Practical Assignment](#integrated-practical-assignment)
- [Learning Progress](#learning-progress)

---

## Repository Structure

```text
Lab1Final/
├── lab01_widget_tree/
│   └── lib/
│       └── main.dart
├── lab2_statefulwidget/
│   └── lib/
│       └── main.dart
├── lab3_widget_lifecycle/
│   └── lib/
│       └── main.dart
├── lab4_buildcontext/
│   └── lib/
│       └── main.dart
├── lab5_layout_widgets/
│   └── lib/
│       └── main.dart
└── lab6_material_cupertino/
    └── lib/
        └── main.dart
```

Each folder is an independent Flutter project. The main Dart implementation for each lab is located at its respective `lib/main.dart` path.

| Lab | Project folder | Main source file |
|---|---|---|
| 01 | `lab01_widget_tree` | [main.dart](lab01_widget_tree/lib/main.dart) |
| 02 | `lab2_statefulwidget` | [main.dart](lab2_statefulwidget/lib/main.dart) |
| 03 | `lab3_widget_lifecycle` | [main.dart](lab3_widget_lifecycle/lib/main.dart) |
| 04 | `lab4_buildcontext` | [main.dart](lab4_buildcontext/lib/main.dart) |
| 05 | `lab5_layout_widgets` | [main.dart](lab5_layout_widgets/lib/main.dart) |
| 06 | `lab6_material_cupertino` | [main.dart](lab6_material_cupertino/lib/main.dart) |

---

## Environment and Requirements

The projects were developed using:

- **Flutter SDK**
- **Dart**
- **Android Studio**
- **Android Emulator** (Pixel 10 Pro emulator used during practical testing)
- **Git and GitHub**

Before running a project, make sure Flutter and the Android development environment are configured.

Check the installation:

```powershell
flutter doctor
```

Resolve any required setup issues reported by Flutter before starting the lab.

## How to Run a Lab

1. Clone or download this repository.
2. Open a PowerShell terminal at the repository root.
3. Move into the project folder you want to run.
4. Fetch the project's dependencies.
5. Start the application on an available emulator or physical device.

Example for Lab 01:

```powershell
cd Lab1Final\lab01_widget_tree
flutter pub get
flutter run
```

For another lab, replace the folder name. For example:

```powershell
cd Lab1Final\lab4_buildcontext
flutter pub get
flutter run
```

You can also open an individual project folder directly in Android Studio and run it using the IDE.

---

# Lab 01 — Building Your First Widget Tree

### Aim

Create a basic Flutter application and understand how widgets are composed into a widget tree.

### Tasks

- Change the application title and the AppBar title.
- Change the displayed message and its font size.
- Add a second Text widget below the first one using a Column.
- Add an Icon widget and describe its position in the widget tree.

### Implementation

The application uses a `StatelessWidget` as its root. Its interface is composed with:

- `MaterialApp` as the application-level widget.
- `Scaffold` as the page structure.
- `AppBar` for the top application bar.
- `Center` to position the body content.
- `Column` to arrange the children vertically.
- `Text`, `SizedBox`, and `Icon` for the visible content and spacing.

### Widget Tree

```text
runApp()
└── MyApp
    └── MaterialApp
        └── Scaffold
            ├── AppBar
            │   └── Text("Intro to Widgets")
            └── Body: Center
                └── Column
                    ├── Text("Hello, Flutter!")
                    ├── SizedBox(height: 10)
                    ├── Text("Welcome to Lab1!")
                    ├── SizedBox(height: 15)
                    └── Icon(Icons.widgets)
```

### Key Learning

Flutter UI is composed by nesting widgets. A parent widget contains or positions its child widgets. In this lab, the Column is the parent of both Text widgets, the spacing widgets, and the Icon.

### Viva Questions and Answers

**1. What is a widget in Flutter?**  
A widget is an immutable configuration that describes a part of the user interface.

**2. What is the purpose of main()?**  
It is the entry point of a Dart application.

**3. What does runApp() do?**  
It attaches the root widget to the Flutter view and starts building the application UI.

**4. What is the role of MaterialApp?**  
It provides the foundation for a Material Design application, including app-level configuration, navigation, and theming.

**5. Why is Scaffold commonly used in Material applications?**  
Scaffold provides a standard Material page structure, including areas such as AppBar, body, drawer, and floating action button.

**Source:** [Lab 01 — main.dart](lab01_widget_tree/lib/main.dart)

---

# Lab 02 — StatelessWidget, StatefulWidget and setState()

### Aim

Compare stateless and stateful widgets and build an interactive counter.

### Tasks

- Create a StatefulWidget named CounterPage.
- Store an integer counter initialized to zero in its State class.
- Display the counter value using a Text widget.
- Add an ElevatedButton to increment the counter using setState().
- Add a reset button.
- Add a decrement button.
- Prevent the counter from becoming negative.
- Display a message when the counter reaches 10.

### Implementation

The counter is stored as an integer in the State class:

```dart
int count = 0;
```

The increment operation updates the value inside setState():

```dart
void increment() {
  setState(() {
    count++;
    if (count == 10) {
      print("You reached 10");
    }
  });
}
```

The decrement method checks the current value before reducing it. The reset method assigns zero to the counter.

### Key Learning

- **StatelessWidget:** describes UI that does not manage mutable local state.
- **StatefulWidget:** is associated with a State object that can hold mutable state.
- **State:** stores values that can change during the widget's lifetime.
- **setState():** notifies Flutter that the State object's data has changed and that the relevant widget subtree needs rebuilding.

Calling setState() does not directly paint pixels. It marks the State object as needing a rebuild; Flutter then performs the required framework and rendering work.

### Implementation Note

In the current committed implementation, the message `You reached 10` is printed to the Run console when the count becomes 10. The lab manual asks for a message to be displayed when the counter reaches 10. To meet that requirement visibly in the app, a conditional Text widget can be added to the Column, for example:

```dart
if (count >= 10)
  const Text('You reached 10!');
```

This is a documented improvement to the current implementation, not a change to the committed source file.

### Viva Questions and Answers

**1. What is the main difference between StatelessWidget and StatefulWidget?**  
A StatelessWidget does not manage mutable local state. A StatefulWidget has an associated State object that can hold changing values.

**2. What is a State object?**  
It is the object associated with a StatefulWidget that stores mutable data and manages the widget's state.

**3. What does setState() notify Flutter about?**  
It notifies Flutter that the State object's data has changed and that the relevant widget subtree needs rebuilding.

**4. Does setState() directly draw pixels?**  
No. It marks the State object as needing a rebuild. Flutter performs the necessary framework and rendering work afterward.

**5. Give two examples of UI elements that commonly require state.**  
A counter and a checkbox. Their displayed value or selected state can change through user interaction.

**Source:** [Lab 02 — main.dart](lab2_statefulwidget/lib/main.dart)

---

# Lab 03 — Exploring the StatefulWidget Lifecycle

### Aim

Observe the major lifecycle methods of a StatefulWidget and understand when they are called.

### Tasks

- Create a StatefulWidget named LifecycleDemo.
- Override initState() and call super.initState().
- Override didChangeDependencies() and call the superclass implementation.
- Add a counter and a button that calls setState().
- Add debugPrint() statements to the lifecycle methods.
- Override dispose(), call super.dispose(), and observe the console output when the page is removed.
- Record the lifecycle messages.
- Research why TextEditingController or AnimationController should be disposed.

### Lifecycle Methods

| Method | Purpose |
|---|---|
| `initState()` | Called once when the State object is inserted into the tree. Used for one-time initialization. |
| `didChangeDependencies()` | Called after initState() and when an inherited dependency used by the State changes. |
| `didUpdateWidget(oldWidget)` | Called when the parent supplies a new configuration of the same widget type and key. |
| `build(context)` | Describes the widget subtree and may execute multiple times. |
| `dispose()` | Called when the State object is permanently removed; used to release owned resources. |

### Expected Lifecycle Observation

On the first screen load, the expected order is:

```text
initState called
didChangeDependencies called
build called
```

When the Rebuild button is pressed, setState() updates the counter and build() executes again.

The original lab starter does not change the widget configuration from a parent, so didUpdateWidget() is implemented but is not triggered by pressing Rebuild.

### Additional Disposal Test

The committed implementation includes a Navigate Away button and a FinishedPage. The button uses Navigator.pushReplacement() to replace the current route. When the old page is permanently removed, the console can show:

```text
dispose called
```

This addition was used to demonstrate disposal because pressing the Android system Back button while the demo is the root screen exits the application. App termination is not a reliable way to observe dispose().

### Controller Disposal Example

A TextEditingController should be disposed when the State object that owns it is permanently removed:

```dart
late final TextEditingController nameController;

@override
void initState() {
  super.initState();
  nameController = TextEditingController();
}

@override
void dispose() {
  nameController.dispose();
  super.dispose();
}
```

Disposing the controller releases its resources and listeners when it is no longer needed. The same cleanup principle applies to an AnimationController.

### Viva Questions and Answers

**1. How many times is initState() called for a given State object?**  
Once.

**2. Why should super.initState() be called?**  
To execute the superclass initialization implementation.

**3. When does didUpdateWidget() run?**  
When the parent provides a new configuration of the same widget type and key.

**4. Why can build() run many times?**  
Because the widget may need to update when its State or inherited dependencies change.

**5. What kinds of resources should be released in dispose()?**  
Resources owned by the State object, such as TextEditingController, AnimationController, and subscriptions.

**Source:** [Lab 03 — main.dart](lab3_widget_lifecycle/lib/main.dart)

---

# Lab 04 — Widget Tree, Element Tree and BuildContext

### Aim

Understand the relationship between Flutter's widget, element, and render-object structures and use BuildContext appropriately.

### Tasks

- Create a screen with Scaffold, AppBar, body, and a FloatingActionButton (the starter example focuses on Scaffold, AppBar, body, and a button).
- Add a button in the body.
- Use the button callback's BuildContext to show a SnackBar through ScaffoldMessenger.
- Observe how the context relates to the widget's location in the tree.
- Draw the widget hierarchy.
- Explain the difference between widgets, elements, and render objects.
- Change the SnackBar message.
- Set a SnackBar duration.
- Add a second button with a different message.
- Explain why Builder is used to obtain a context below Scaffold.

### Three Flutter Structures

| Structure | Role |
|---|---|
| Widget Tree | Contains immutable widget configurations describing the UI. |
| Element Tree | Contains mounted instances that manage widget positions and connect widgets with rendering objects. |
| RenderObject Tree | Performs layout, painting, and hit testing. |

### BuildContext

BuildContext represents a location in the Element Tree. It allows code to look up information and services provided by ancestor widgets.

The lab uses Builder to obtain a context below the Scaffold. This matters because an ancestor lookup searches upward from the supplied context; it cannot find a descendant below that context.

The two buttons display different SnackBar messages using ScaffoldMessenger:

- `Welcome to Lab 04!`
- `Hello from the Second Button!`

Both SnackBars use a three-second duration.

### Widget Tree

```text
runApp()
└── MaterialApp
    └── ContextDemo
        └── Scaffold
            ├── AppBar
            │   └── Text("BuildContext Demo")
            └── Body: Center
                └── Builder
                    └── Column
                        ├── ElevatedButton
                        │   └── Text("Show First SnackBar")
                        ├── SizedBox
                        └── ElevatedButton
                            └── Text("Show Second SnackBar")
```

### Viva Questions and Answers

**1. Are widgets mutable or immutable configurations?**  
Widgets are immutable configurations.

**2. What does an Element do?**  
It manages a mounted widget's position in the tree and connects widget configurations with rendering structures.

**3. Which structure is responsible for layout and painting?**  
The RenderObject Tree.

**4. What is BuildContext?**  
It is a handle representing a location in the Element Tree.

**5. Why can using a context above a Scaffold cause a lookup problem?**  
Because that context is not below the Scaffold and cannot find a descendant through an ancestor lookup.

**Source:** [Lab 04 — main.dart](lab4_buildcontext/lib/main.dart)

---

# Lab 05 — Layout Widgets and Spacing

### Aim

Compose a structured screen using common Flutter layout widgets.

### Tasks

- Create a StudentProfilePage as a StatelessWidget.
- Use Scaffold and AppBar as the page structure.
- Use SingleChildScrollView around the body content.
- Add a profile section using Row, CircleAvatar, and Column.
- Use Padding and SizedBox for spacing.
- Add information cards.
- Use Expanded in a Row to make two information panels share available width.
- Add phone number and address sections.
- Use Stack to overlay a small status icon on the avatar.
- Add enough content to test vertical scrolling.
- Adjust spacing and test on a narrow emulator screen.
- Explain what happens if Expanded is placed outside a Flex parent.

### Widgets Practised

| Widget | Purpose |
|---|---|
| `Row` | Arranges children horizontally. |
| `Column` | Arranges children vertically. |
| `Padding` | Adds space around a child. |
| `SizedBox` | Creates fixed-size space or constrains a child to a specific size. |
| `Expanded` | Allocates available main-axis space inside a Flex layout. |
| `SingleChildScrollView` | Makes content scrollable when it exceeds the viewport. |
| `Stack` | Places widgets on top of one another. |
| `Positioned` | Controls the placement of a child inside a Stack. |
| `CircleAvatar` | Displays a circular profile image or placeholder. |
| `Card` | Groups related information. |

### Implementation

The Student Profile screen contains:

- A profile section with a circular avatar and a green status indicator.
- Academic information, including student ID, CGPA, and department.
- Contact information, including email, phone, and address.
- Additional information such as current semester, completed credits, and academic status.
- A reusable infoCard() helper function to build information cards consistently.

The page uses SingleChildScrollView so the user can reach content below the visible screen.

### Important Layout Observation

Expanded must be used inside a Flex parent such as Row or Column. Placing Expanded outside a valid Flex parent causes a ParentDataWidget-related framework error because Expanded needs Flex layout instructions to distribute available space.

### Viva Questions and Answers

**1. What is the difference between Row and Column?**  
Row arranges children horizontally, while Column arranges children vertically.

**2. What does Expanded do?**  
It makes a child of a Flex layout occupy available main-axis space.

**3. When should SingleChildScrollView be used?**  
When content may exceed the available viewport and needs to scroll.

**4. What is the purpose of Stack?**  
It allows widgets to overlap one another.

**5. How are Padding and SizedBox different?**  
Padding adds space around a child. SizedBox creates a fixed-size space or constrains a child to specific dimensions.

**Source:** [Lab 05 — main.dart](lab5_layout_widgets/lib/main.dart)

---

# Lab 06 — Material and Cupertino Interface Components

### Aim

Build a simple interface using Flutter's Material and Cupertino widget families.

### Tasks

- Create a MaterialApp with a Scaffold.
- Add an AppBar with a title and an action icon.
- Add a CircleAvatar for a profile image or placeholder.
- Use Card widgets to group related information.
- Use Divider to separate sections.
- Add a FloatingActionButton with a meaningful action.
- Create a separate Cupertino screen using CupertinoPageScaffold and CupertinoNavigationBar.
- Add a CupertinoButton that opens a CupertinoAlertDialog.
- Compare the visual appearance and interaction patterns of the two screens.

### Material Screen

The Material profile screen demonstrates:

- MaterialApp and Scaffold.
- AppBar with an action icon.
- CircleAvatar for the profile.
- Card for academic information and contact information.
- Divider between sections.
- FloatingActionButton that displays a SnackBar.
- Navigation to the Cupertino screen.

### Cupertino Screen

The Cupertino screen demonstrates:

- CupertinoPageScaffold for the page structure.
- CupertinoNavigationBar for iOS-style navigation.
- SafeArea to keep content away from system interface areas.
- CupertinoButton.filled for the primary action.
- CupertinoAlertDialog for an iOS-style dialog.
- CupertinoDialogAction to close the dialog.

The two screens are accessible through navigation inside one MaterialApp root. The Cupertino page still uses Cupertino-specific page, navigation, button, and dialog widgets.

### Material vs Cupertino

| Feature | Material | Cupertino |
|---|---|---|
| Design convention | Google's Material Design | iOS-style interface conventions |
| Page structure | Scaffold | CupertinoPageScaffold |
| Navigation bar | AppBar | CupertinoNavigationBar |
| Button example | ElevatedButton | CupertinoButton |
| Dialog example | AlertDialog | CupertinoAlertDialog |
| Common appearance | Material surfaces and controls | iOS-style controls and presentation |

Material and Cupertino widgets can coexist in one Flutter application. For consistency, a screen generally follows one design convention.

### Viva Questions and Answers

**1. What is the purpose of the Material widget library?**  
It provides widgets for implementing Google's Material Design language.

**2. What is the Cupertino widget library designed to provide?**  
It provides iOS-style interface components.

**3. Name four commonly used Material widgets.**  
AppBar, Card, CircleAvatar, and FloatingActionButton.

**4. What is the role of SafeArea?**  
It keeps content away from system interface areas such as status bars and notches.

**5. Can Material and Cupertino widgets coexist in one Flutter application?**  
Yes. Both widget families can be used in the same Flutter application.

**Source:** [Lab 06 — main.dart](lab6_material_cupertino/lib/main.dart)

---

## Concepts Practised Across the Labs

The six exercises build on one another:

1. **Widget composition:** creating interfaces by nesting widgets.
2. **Stateless and stateful UI:** understanding when a widget needs mutable state.
3. **State updates:** using setState() to notify Flutter about changes.
4. **Widget lifecycle:** initializing, rebuilding, updating, and disposing of State objects.
5. **BuildContext:** accessing ancestor services based on a widget's location.
6. **Flutter tree structures:** distinguishing Widget, Element, and RenderObject roles.
7. **Layout:** arranging content with Row, Column, Expanded, and Stack.
8. **Scrolling:** making longer interfaces usable with SingleChildScrollView.
9. **Material components:** using common Material interface widgets.
10. **Cupertino components:** implementing iOS-style interface elements and dialogs.

---

## Troubleshooting and Important Observations

### 1. Choreographer skipped frames

A message such as:

```text
I/Choreographer: Skipped frames!
The application may be doing too much work on its main thread.
```

is an Android frame-performance warning. It is not, by itself, proof of a Dart compilation error. Check whether the Flutter build succeeded and whether the application actually appears in the emulator.

### 2. dispose() did not print after pressing Android Back

The Lab 03 screen was the root route. Pressing the Android Back button can exit the app, and application termination is not a reliable way to observe dispose().

A Navigate Away button was added using Navigator.pushReplacement() to replace the page with FinishedPage. This provided a controlled way to observe the old State object's dispose() method.

### 3. didUpdateWidget() did not print

The Lab 03 starter code does not receive a changed configuration from a parent. Pressing Rebuild calls setState() on the existing State object, so build() runs again but didUpdateWidget() is not triggered.

### 4. Expanded outside a Flex parent

Expanded must be a child of a valid Flex layout such as Row or Column. Otherwise Flutter can report incorrect use of ParentDataWidget.

### 5. BuildContext lookup

Ancestor lookups such as ScaffoldMessenger.of(context) search upward from the supplied context. Builder can provide a context lower in the widget tree, where the required ancestor is available.

---

## Integrated Practical Assignment

The course laboratory manual also includes an integrated **Student Academic Dashboard** assignment. It combines concepts from all six labs and is separate from the six individual exercises in this folder.

### Minimum Requirements

- A home screen with an AppBar and a student profile section.
- A profile card containing name, ID, department, and CGPA.
- A stateful attendance or task counter with increment and reset actions.
- A button that displays a SnackBar using ScaffoldMessenger.
- A scrollable layout that works on a narrow screen.
- At least one Material component such as Card, Divider, or CircleAvatar.
- A code comment or report section explaining where lifecycle methods would be used if the screen owned controllers or subscriptions.

### Submission Requirements

- Flutter project source code.
- Screenshots of the running application.
- A short report describing the widget tree and stateful components.
- Answers to relevant viva questions.
- A brief note describing one error encountered and how it was resolved.

**Status:** This integrated assignment is listed here as the next combined exercise. It is not represented as a completed project in the six lab folders above.

---

## Learning Progress

| Lab | Topic | Project |
|---|---|---|
| 01 | Building Your First Widget Tree | `lab01_widget_tree` |
| 02 | StatelessWidget, StatefulWidget and setState() | `lab2_statefulwidget` |
| 03 | Exploring the StatefulWidget Lifecycle | `lab3_widget_lifecycle` |
| 04 | Widget Tree, Element Tree and BuildContext | `lab4_buildcontext` |
| 05 | Layout Widgets and Spacing | `lab5_layout_widgets` |
| 06 | Material and Cupertino Interface Components | `lab6_material_cupertino` |

---

## About This Repository

This repository is a practical learning record for Flutter and Dart coursework. Each lab is kept in a separate project to make the code easy to run, review, and revisit.

The goal is to strengthen fundamental mobile application development skills through consistent implementation and experimentation.

**Small steps, consistent practice, continuous growth.**

*The journey continues.*
