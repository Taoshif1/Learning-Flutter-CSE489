import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: CounterPage()));

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
      if (count == 10) {
        print("You reached 10");
      }
    });
  }

  void decrement() {
    setState(() {
      if (count <= 0) {
        print("Cannot go to negative value");
      } else
        count--;
    });
  }

  void reset() {
    setState(() {
      count = 0;
      print("Resetted to Zero");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Counter')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Count: $count', style: const TextStyle(fontSize: 28)),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: increment,
              child: const Text('Increment'),
            ),
            ElevatedButton(
              onPressed: decrement,
              child: const Text('Decrement'),
            ),
            TextButton(onPressed: reset, child: const Text('Reset')),
          ],
        ),
      ),
    );
  }
}
