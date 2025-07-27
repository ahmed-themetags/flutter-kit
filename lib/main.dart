import 'package:flutter/material.dart';
import 'screens/train_list_screen.dart';

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
      home: TrainListScreen(),
    );
  }
}
