import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';

void main() {
  runApp(CUTrainScheduleApp());
}

class CUTrainScheduleApp extends StatelessWidget {
  const CUTrainScheduleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CU Train Schedule',
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
