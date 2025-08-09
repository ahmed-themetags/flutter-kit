import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Screen Example'),
      ),
      body: Column(
        children: [
          Text('1. Elevated Button Press (onPressed)'),
          ElevatedButton(
            onPressed: () {
              // Action code here
              print('Button pressed!');
            },
            child: Text('Press me'),
          ),
          SizedBox(height: 20),


          Text('2. GestureDetector Tap (onTap)'),
          GestureDetector(
            onTap: () {
              print('Tapped!');
            },
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(20),
              child: Text('Tap me'),
            ),
          ),
          SizedBox(height: 20),

          Text('3. Navigation Push'),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Text('Go to Next Page'),
          ),
          SizedBox(height: 20),

          Text('4.ElevatedButton Showing a Snackbar'),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Hello Snackbar!')),
              );
            },
            child: Text('Show Snackbar'),
          ),
          SizedBox(height: 20),


          Text('5. ElevatedButton Showing a Dialog'),

          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Dialog Title'),
                  content: Text('This is a dialog message.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Close'),
                    )
                  ],
                ),
              );
            },
            child: Text('Show Dialog'),
          ),
          SizedBox(height: 20),

          Text('6. Switch Toggle'),

            Switch(
            value: isSwitched,
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),


          Text('7. TextField with onChanged'),
          TextField(
            onChanged: (text) {
              print('Text changed: $text');
            },
            decoration: InputDecoration(labelText: 'Enter text'),
          ),
          SizedBox(height: 20),




        ],
      ),
    );
  }
}