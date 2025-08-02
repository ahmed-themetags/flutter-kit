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
      title: 'Flutter UI UIKids',
      theme: ThemeData(primarySwatch: Colors.teal),
      color: Colors.teal.shade200,
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
