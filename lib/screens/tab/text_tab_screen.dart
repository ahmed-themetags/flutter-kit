import 'package:flutter/material.dart';

class TextTabScreen extends StatelessWidget {
  const TextTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Text Tab Screen'),
        ),
      ),
    );
  }
}
