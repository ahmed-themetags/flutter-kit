import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:my_flutter_app/widgets/navigation_bar_widget.dart';

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
      bottomNavigationBar: NavigationBarBarWidget(),
    );
  }
}
