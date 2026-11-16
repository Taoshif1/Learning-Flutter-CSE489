import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: ContextDemo()));

class ContextDemo extends StatelessWidget {
  const ContextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BuildContext Demo')),
      body: Center(
        child: Builder(
          builder: (buttonContext) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // First button
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(buttonContext).showSnackBar(
                      const SnackBar(
                        content: Text('Welcome to Lab 04!'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  },
                  child: const Text('Show First SnackBar'),
                ),

                const SizedBox(height: 12),

                // Second button
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(buttonContext).showSnackBar(
                      const SnackBar(
                        content: Text('Hello from the Second Button!'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  },
                  child: const Text('Show Second SnackBar'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
// runApp()
//  └── MaterialApp
//      └── ContextDemo
//          └── Scaffold
//          ├── AppBar
//          │   └── Text("BuildContext Demo")
//          │
//          └── Body: Center
//              └── Builder
//                  └── Column
//                  ├── ElevatedButton
//                  │   └── Text("Show First SnackBar")
//                  │
//                  ├── SizedBox
//                  │
//                  └── ElevatedButton
//                      └── Text("Show Second SnackBar")
