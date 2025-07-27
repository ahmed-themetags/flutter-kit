import 'package:flutter/material.dart';

class EducationInfoScreen extends StatelessWidget {
  const EducationInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education Information'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'CU offers undergraduate and postgraduate programs in various faculties... (Add details here)',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
