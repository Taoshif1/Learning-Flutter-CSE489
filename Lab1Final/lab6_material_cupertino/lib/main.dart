import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const Lab6App());
}

// Root application
class Lab6App extends StatelessWidget {
  const Lab6App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab 06',
      home: const MaterialProfilePage(),
    );
  }
}

// ========================================
// MATERIAL DESIGN SCREEN
// ========================================

class MaterialProfilePage extends StatelessWidget {
  const MaterialProfilePage({super.key});

  // Navigate to Cupertino screen
  void openCupertino(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CupertinoDemoPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Material AppBar
      appBar: AppBar(
        title: const Text('Material Profile'),

        // AppBar action icon
        actions: [
          IconButton(
            tooltip: 'Open Cupertino Demo',
            onPressed: () => openCupertino(context),
            icon: const Icon(Icons.phone_iphone),
          ),
        ],
      ),

      // Profile content
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile section
            Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  child: Icon(Icons.person, size: 38),
                ),

                const SizedBox(width: 16),

                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gazi Taoshif',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text('CSE Student'),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Academic information card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Academic Information',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Divider(),

                    const ListTile(
                      leading: Icon(Icons.badge),
                      title: Text('Student ID'),
                      subtitle: Text('2023-03-60-376'),
                    ),

                    const ListTile(
                      leading: Icon(Icons.school),
                      title: Text('Department'),
                      subtitle: Text('Computer Science & Engineering'),
                    ),

                    const ListTile(
                      leading: Icon(Icons.grade),
                      title: Text('CGPA'),
                      subtitle: Text('3.58'),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Contact information card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Contact Information',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Divider(),

                    const ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Email'),
                      subtitle: Text('taoshif2@gmail.com'),
                    ),

                    const ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Phone'),
                      subtitle: Text('01760972307'),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Button to open Cupertino screen
            Center(
              child: ElevatedButton.icon(
                onPressed: () => openCupertino(context),
                icon: const Icon(Icons.phone_iphone),
                label: const Text('Open Cupertino Interface'),
              ),
            ),
          ],
        ),
      ),

      // Material FloatingActionButton
      floatingActionButton: FloatingActionButton(
        tooltip: 'Show profile message',
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Material Profile is active!')),
          );
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}

// ========================================
// CUPERTINO DESIGN SCREEN
// ========================================

class CupertinoDemoPage extends StatelessWidget {
  const CupertinoDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // iOS-style Navigation Bar
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cupertino Interface'),
      ),

      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                CupertinoIcons.device_phone_portrait,
                size: 60,
                color: CupertinoColors.activeBlue,
              ),

              const SizedBox(height: 20),

              const Text(
                'Welcome to Cupertino UI',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // Cupertino button
              CupertinoButton.filled(
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (dialogContext) => CupertinoAlertDialog(
                      title: const Text('Hello'),

                      content: const Text('This is a Cupertino dialog.'),

                      actions: [
                        CupertinoDialogAction(
                          onPressed: () {
                            Navigator.pop(dialogContext);
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('Show Dialog'),
              ),

              const SizedBox(height: 12),

              // Return to Material screen
              CupertinoButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back to Material Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
