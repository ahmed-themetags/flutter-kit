import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavigationBarBarWidget extends StatelessWidget {
  const NavigationBarBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
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
    );
  }
}
