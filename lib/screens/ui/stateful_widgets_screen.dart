import 'package:flutter/material.dart';

class StatefulWidgetsScreen extends StatefulWidget {
  const StatefulWidgetsScreen({super.key});

  @override
  State<StatefulWidgetsScreen> createState() => _StatefulWidgetsScreenState();
}

class _StatefulWidgetsScreenState extends State<StatefulWidgetsScreen> {
  bool _isdarkMood = false;
  int _counter    = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: _isdarkMood ? Colors.black : Colors.blue, // 🔵 Set your background color here
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SwitchListTile(
                  title: Text(
                    _isdarkMood ? 'Dark Mode' : 'Light Mode',
                    style: TextStyle(
                      color: _isdarkMood ? Colors.blue : Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  value: _isdarkMood,
                  onChanged: (val) => setState(() {
                    _isdarkMood = val;
                  }),
                ),

                // Counter
                Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      _counter.toString(),
                      style: TextStyle(
                        color: _isdarkMood ? Colors.grey : Colors.white,
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Flutter UI Kids',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white
                        ),
                      ),
                      Text(
                        'Developed by Ahmed Ullah',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),
                      ),

                      SizedBox(height: 20),

                      Text(
                        _counter > 70
                            ? '🏆' // Champion!
                            : _counter > 60
                            ? '🤖' // Superhuman!
                            : _counter > 50
                            ? '🦾' // Power mode!
                            : _counter > 40
                            ? '🚀' // Flying high!
                            : _counter > 30
                            ? '🔥' // On fire!
                            : _counter > 25
                            ? '🎯' // On target!
                            : _counter > 20
                            ? '😎' // Cool!
                            : _counter > 15
                            ? '🙌' // Nice!
                            : _counter > 10
                            ? '💪' // Getting strong!
                            : _counter > 5
                            ? '✨' // Good start!
                            : _counter > 0
                            ? '🌱' // Just started!
                            : '💤', // Not started yet,
                        style: TextStyle(
                          color: _isdarkMood ? Colors.grey : Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 20),

                      ElevatedButton(
                        child: Text(
                          'Click',
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                        onPressed: () => setState(() {
                          _isdarkMood = true;
                          _counter  += 1;
                        }),
                      ),
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
