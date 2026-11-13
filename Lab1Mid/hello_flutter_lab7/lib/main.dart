import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Flutter App'),
        ),
        body: const Center(
          child: Text(
            'Gazi Taoshif (Taoshiflex)\n'
                'CSE 489\n'
                'Learning Dart and Flutter!',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}