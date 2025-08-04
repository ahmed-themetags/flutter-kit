import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CurveNavigationScreen extends StatelessWidget {
  const CurveNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue, // 🌈 Your desired background color
        child: Center(
          child: Text(
            '🎉 Curve Navigation Screen 🎉',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),

      // Curved Navigation Bar
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        height: 60,
        // buttonBackgroundColor: Colors.orange, // 🔴 Active icon background color
        items: <Widget>[
          Icon(Icons.settings, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
