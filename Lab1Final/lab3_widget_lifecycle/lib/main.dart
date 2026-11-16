import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: LifecycleDemo()));

// 1. Creating the StatefulWidget
class LifecycleDemo extends StatefulWidget {
  const LifecycleDemo({super.key});

  // 2. Creating the State object (Connects LifecycleDemo to its State class)
  @override
  State<LifecycleDemo> createState() => _LifecycleDemoState();
}

class _LifecycleDemoState extends State<LifecycleDemo> {
  int value = 0;

  @override
  void initState() {
    super.initState(); // calls the superclass implementation
    debugPrint('initState called');
  }

  @override
  void didChangeDependencies() {
    // executes immediately after initState()
    super.didChangeDependencies();
    debugPrint('didChangeDependencies called');
  }

  @override
  void didUpdateWidget(covariant LifecycleDemo oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('didUpdateWidget called');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build called');
    return Scaffold(
      appBar: AppBar(title: const Text('Lifecycle Demo')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Value: $value'),
            // Original lab sheet button
            ElevatedButton(
              onPressed: () => setState(() => value++),
              child: const Text('Rebuild'),
            ),
            const SizedBox(height: 10),

            // Additional button to demonstrate dispose()
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const FinishedPage()),
                );
              },
              child: const Text('Navigate Away'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // performs cleanup when the State object is permanently removed from the widget tree
    debugPrint('dispose called');
    super.dispose();
  }
}

// Destination page
class FinishedPage extends StatelessWidget {
  const FinishedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Finished')),
      body: const Center(
        child: Text(
          'LifecycleDemo has been removed!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

// Navigator: Manages screen navigation.
// of(context): Finds the Navigator associated with this location in the widget tree.
// pushReplacement(): Replaces the current screen with another screen.
// MaterialPageRoute: Creates the route for the new screen.
// FinishedPage(): The destination screen.

// late final TextEditingController nameController;
//
// @override
// void initState() {
//   super.initState();
//   nameController = TextEditingController();
// }
//
// @override
// void dispose() {
//   nameController.dispose();
//   super.dispose();
// }
