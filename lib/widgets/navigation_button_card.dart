import 'package:flutter/material.dart';

class NavigationButtonCard extends StatelessWidget {
  final String label;
  final Widget screen;
  final Color color;
  final double fontSize;

  const NavigationButtonCard({
    super.key,
    required this.label,
    required this.screen,
    this.color = Colors.orange,
    this.fontSize = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Card(
          color: color,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
