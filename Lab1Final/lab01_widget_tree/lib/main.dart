import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Lab',
      home: Scaffold(
        appBar: AppBar(title: const Text('Intro to Widgets')),
        body: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Hello, Flutter!',
                style: TextStyle(fontSize: 24, color: Colors.deepOrange),
              ),
              SizedBox(height: 10),
              Text(
                'Welcome to Lab1!',
                style: TextStyle(fontSize: 20, color: Colors.orange),
              ),
              SizedBox(height: 15),
              Icon(Icons.widgets, size: 50, color: Colors.lightBlueAccent),
            ],
          ),
        ),
      ),
    );
  }
}

// WIDGET TREE

// runApp()
//  └── MyApp
//       └── MaterialApp
//            └── Scaffold
//            ├── AppBar
//            │   └── Text("Intro to Widgets")
//            │
//            └── Body: Center
//                └── Column
//                ├── Text("Hello, Flutter!")
//                ├── SizedBox(height: 10)
//                ├── Text("Welcome to Lab1!")
//                ├── SizedBox(height: 15)
//                └── Icon(Icons.widgets)

// ================
// FIRST ONE
// ================

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Widget Lab',
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Intro to Widgets')),
//         body: const Center(
//           child: Text('Hello, Flutter!', style: TextStyle(fontSize: 24)),
//         ),
//       ),
//     );
//   }
// }
