import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Profile App',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Responsive design using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isTablet ? screenWidth * 0.2 : 20.0,
            vertical: 20.0,
          ),
          child: Column(
            children: [
              // Profile Image with Decoration
              const CircleAvatar(
                radius: 72,
                backgroundColor: Colors.deepPurpleAccent,
                child: CircleAvatar(
                  radius: 68,
                  backgroundImage: AssetImage('assets/me.png'),
                ),
              ),
              const SizedBox(height: 15),

              // Name and Bio
              const Text(
                "Niloy Shil",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Flutter Developer",
                style: TextStyle(fontSize: 14, color: Colors.deepPurple, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              const Text(
                "I love building mobile apps with Flutter. Learning new things every day and enjoying the journey! ",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 25),

              // Information Cards
              _buildInfoCard(Icons.location_on, Colors.deepPurple, "Location", "Chattogram, Bangladesh"),
              _buildInfoCard(Icons.school, Colors.green, "Education", "BSc in CSE, Premier University"),
              _buildInfoCard(Icons.code, Colors.blue, "Skills", "Flutter, Dart, Git"),

              const SizedBox(height: 25),
              const Text("Connect With Me", style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),

              // Social Media Icons using Row widget
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _SocialIcon(icon: Icons.facebook, color: Colors.blue),
                  SizedBox(width: 30),
                  _SocialIcon(icon: Icons.code, color: Colors.black87),
                  SizedBox(width: 30),
                  _SocialIcon(icon: Icons.email, color: Colors.redAccent),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Proper Decoration and Layout for Info Cards
  Widget _buildInfoCard(IconData icon, Color color, String title, String sub) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Icon(icon, color: color, size: 30),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: color)),
        subtitle: Text(sub),
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  const _SocialIcon({required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: color,
      child: Icon(icon, color: Colors.white),
    );
  }
}