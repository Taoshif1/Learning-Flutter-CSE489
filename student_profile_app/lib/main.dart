import 'package:flutter/material.dart';

void main() {
  runApp(const StudentProfileApp());
}

// Root application
class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile App',
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      home: const StudentProfilePage(),
    );
  }
}

// Student profile screen
class StudentProfilePage extends StatefulWidget {
  const StudentProfilePage({super.key});

  @override
  State<StudentProfilePage> createState() => _StudentProfilePageState();
}

// State class
class _StudentProfilePageState extends State<StudentProfilePage> {
  bool isFollowing = false;
  bool showMore = false;

  int followers = 120;

  void toggleFollow() {
    setState(() {
      isFollowing = !isFollowing;

      if (isFollowing) {
        followers++;
      } else {
        followers--;
      }
    });
  }

  void toggleDetails() {
    setState(() {
      showMore = !showMore;
    });
  }

  void contactStudent() {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Contact request sent!')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CSE489 | Student Profile',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(24),

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Profile avatar
                    const CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.person, size: 65, color: Colors.white),
                    ),

                    const SizedBox(height: 20),

                    // Student name
                    const Text(
                      'Gazi Taoshif',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Student information
                    const Text(
                      'CSE Student',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),

                    const Text(
                      'East West University',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),

                    const SizedBox(height: 20),

                    // Followers count
                    Text(
                      'Followers: $followers',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 22),

                    // Follow and Contact buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: toggleFollow,
                          child: Text(isFollowing ? 'Unfollow' : 'Follow'),
                        ),

                        const SizedBox(width: 12),

                        OutlinedButton(
                          onPressed: contactStudent,
                          child: const Text('Contact'),
                        ),
                      ],
                    ),

                    const Divider(height: 28),

                    // Show more / less details
                    TextButton(
                      onPressed: toggleDetails,
                      child: Text(showMore ? 'Show Less' : 'Show More'),
                    ),

                    if (showMore) ...[
                      const SizedBox(height: 10),

                      const Text(
                        'Department: Computer Science & Engineering',
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        'University: East West University',
                        textAlign: TextAlign.center,
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        'Interests: Programming, Web Development, AI',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
