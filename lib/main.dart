import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_flutter_app/mun/pages/mun_home_screen.dart';
import 'package:my_flutter_app/screens/home_screen.dart';

void main() {
  runApp(ProviderScope(child: CUTrainScheduleApp()));
}

class CUTrainScheduleApp extends StatelessWidget {
  const CUTrainScheduleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI UIKids',
      color: Colors.teal.shade200,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      // home: HomeScreen()
      home: MunHomeScreen()
    );
  }
}
