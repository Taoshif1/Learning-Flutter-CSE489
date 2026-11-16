import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: StudentProfilePage()));

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Profile')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Student profile section
            Row(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 34,
                      child: Icon(Icons.person, size: 36),
                    ),

                    // Online status indicator
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(width: 16),

                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gazi Taoshif',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'CSE Student',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight(700),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Academic information
            const Text(
              'Academic Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(child: infoCard('Student ID', '2026-03-60-376')),
                const SizedBox(width: 12),
                Expanded(child: infoCard('CGPA', '3.58')),
              ],
            ),

            const SizedBox(height: 12),

            infoCard('Department', 'Computer Science & Engineering'),

            const SizedBox(height: 12),

            infoCard('Email', 'taoshif2@gmail.com'),

            const SizedBox(height: 24),

            // Contact information
            const Text(
              'Contact Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            infoCard('Phone', '01760972307'),

            const SizedBox(height: 12),

            infoCard('Address', 'Dhaka, Bangladesh'),

            const SizedBox(height: 24),

            // Additional information for scroll testing
            const Text(
              'Additional Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),

            infoCard('Current Semester', '10th Semester'),

            const SizedBox(height: 12),

            infoCard('Completed Credits', '98'),

            const SizedBox(height: 12),

            infoCard('Academic Status', 'Active'),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Reusable information card
  Widget infoCard(String title, String value) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(color: Colors.grey)),

            const SizedBox(height: 6),

            Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

// ============
// WIDGET TREE
// ============

// runApp()
//  └── MaterialApp
//      └── StudentProfilePage
//          └── Scaffold
//          ├── AppBar
//          │   └── Text
//          │
//          └── SingleChildScrollView
//              └── Padding
//                  └── Column
//                  ├── Row
//                  │   ├── Stack
//                  │   │   ├── CircleAvatar
//                  │   │   └── Positioned
//                  │   │       └── Container
//                  │   └── Expanded
//                  │       └── Column
//                  │           ├── Text (Name)
//                  │           └── Text (Department)
//                  │
//                  ├── Text (Academic Information)
//                  ├── Row
//                  │   ├── Expanded
//                  │   │   └── infoCard
//                  │   └── Expanded
//                  │       └── infoCard
//                  │
//                  ├── infoCard (Department)
//                  ├── infoCard (Email)
//                  ├── Text (Contact Information)
//                  ├── infoCard (Phone)
//                  ├── infoCard (Address)
//                  ├── Text (Additional Information)
//                  ├── infoCard (Semester)
//                  ├── infoCard (Credits)
//                   └── infoCard (Status)
