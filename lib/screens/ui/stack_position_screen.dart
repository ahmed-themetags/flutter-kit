import 'package:flutter/material.dart';

class StackPositionScreen extends StatefulWidget {
  const StackPositionScreen({super.key});

  @override
  State<StackPositionScreen> createState() => _StackPositionScreenState();
}

class _StackPositionScreenState extends State<StackPositionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20), // added top padding
        child: Column(
          children: [
            Text(
                'Example of Stack Position',
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white
                ),
            ),
            SizedBox(height: 20),

            Stack(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueAccent.withOpacity(0.7), // 50% visible
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 60,
                    height: 60,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    width: 60,
                    height: 60,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Stack(
              alignment: Alignment.center, // Center all children
              children: [
                Container(
                  width: 360,
                  height: 360,
                  color: Colors.red,
                ),
                Container(
                  width: 260,
                  height: 260,
                  color: Colors.white,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue,
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.red,
                ),
              ],
            ),

            SizedBox(height: 20),

            Stack(
              alignment: Alignment.center, // Center all children
              children: [
                Container(
                  width: 360,
                  height: 360,
                  color: Colors.red,
                ),
                Container(
                  width: 260,
                  height: 260,
                  color: Colors.white,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue,
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.red,
                ),
              ],
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
