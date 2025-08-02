import 'package:flutter/material.dart';

class CardTabScreen extends StatelessWidget {
  const CardTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Card Tab Screen'),
        ),
      ),
    );
  }
}
