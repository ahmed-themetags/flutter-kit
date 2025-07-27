import 'package:flutter/material.dart';

class CUHistoryScreen extends StatelessWidget {
  const CUHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CU History'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Chittagong University was established in 1966... (Add your detailed info here)',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
