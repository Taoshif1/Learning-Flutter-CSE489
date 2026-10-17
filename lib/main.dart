import 'package:flutter/material.dart';

void main() {
  runApp(const PracticeApp());
}

class PracticeApp extends StatelessWidget {
  const PracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('CSE 489 Practice')),

        // EXCERCISE 01
        // body: const Center(
        //   child: Text(
        //     'Flutter & Dart',
        //     style: TextStyle(
        //       fontSize: 38,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),

        // EXCERCISE 02: VERTICAL LAYOUT
        // body: const Center(
        //     child: Column(
        //       mainAxisSize: MainAxisSize.min,
        //       children: [
        //         Icon(
        //           Icons.phone_android,
        //           size: 64,
        //           color: Colors.blue,
        //         ),
        //         SizedBox(height: 16),
        //         Text(
        //           'Learning Flutter & Dart',
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //             fontSize: 34,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //         SizedBox(height: 8),
        //         Text(
        //           'Excercise 02: Widget Layout',
        //           style: TextStyle(
        //             fontSize: 20,
        //             fontWeight: FontWeight.w600,
        //           ),
        //         )
        //       ],
        //     ),
        // ),

        // EXCERCISE 03: VERTICAL & HORIZONTAL LAYOUT
        // body: Center(
        //   child: Card(
        //     child: Padding(
        //         padding: const EdgeInsets.all(16),
        //         child: Row(
        //           children: [
        //             const CircleAvatar(
        //               radius: 32,
        //               child: Icon(
        //                 Icons.person,
        //                 size: 36,
        //               ),
        //             ),
        //
        //             const SizedBox(width: 16),
        //
        //             const Expanded(
        //                 child: Column(
        //                 mainAxisSize: MainAxisSize.min,
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Text(
        //                     'Taoshif',
        //                     style: TextStyle(
        //                       fontSize: 22,
        //                       fontWeight: FontWeight.bold,
        //                     ),
        //                   ),
        //                   SizedBox(height: 4),
        //                   Text('CSE Student'),
        //                   SizedBox(height: 4),
        //                   Text('Flutter Learner'),
        //                 ],
        //                 ),
        //             ),
        //           ],
        //         ),
        //     ),
        //   ),
        // ),

        // EXCERCISE 04 - two alignment demos

        // body: SingleChildScrollView(
        //   padding: const EdgeInsets.all(16),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.stretch,
        //     children: [
        //       const Text(
        //         '1. Row Alignment',
        //         style: TextStyle(
        //           fontSize: 20,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //       const SizedBox(height: 8),
        //
        //       Container(
        //         height: 120,
        //         decoration: BoxDecoration(
        //           color: Colors.blue.shade50,
        //           borderRadius: BorderRadius.circular(12),
        //         ),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             Container(
        //               width: 42,
        //               height: 38,
        //               color: Colors.blue,
        //             ),
        //             Container(
        //               width: 42,
        //               height: 64,
        //               color: Colors.orange,
        //             ),
        //             Container(
        //               width: 42,
        //               height: 86,
        //               color: Colors.green,
        //             ),
        //           ],
        //         ),
        //       ),
        //
        //       const SizedBox(height: 28),
        //
        //       const Text(
        //         '2. Column Alignment',
        //         style: TextStyle(
        //           fontSize: 20,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //       const SizedBox(height: 8),
        //
        //       Container(
        //         height: 190,
        //         decoration: BoxDecoration(
        //           color: Colors.orange.shade50,
        //           borderRadius: BorderRadius.circular(12),
        //         ),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Container(
        //               width: 100,
        //               height: 28,
        //               color: Colors.blue,
        //             ),
        //             Container(
        //               width: 150,
        //               height: 28,
        //               color: Colors.orange,
        //             ),
        //             Container(
        //               width: 200,
        //               height: 28,
        //               color: Colors.green,
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),

        // Exercise 05: Buttons, callbacks and user interaction
        body: Builder(
          builder: (context) => Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Exercise 05: Button Interaction',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 24),

                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Hello, Taoshif!')),
                      );
                    },
                    child: const Text('Say Hello'),
                  ),

                  const SizedBox(height: 12),

                  OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('I am learning Flutter!')),
                      );
                    },
                    child: const Text('Show Lesson Message'),
                  ),

                  const SizedBox(height: 12),

                  TextButton(
                    onPressed: null,
                    child: const Text('Disabled Button'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
