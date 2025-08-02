import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';

class ViewSourceCodeBtn extends StatelessWidget {
  // final Train train;
  // final VoidCallback onTap;

  const ViewSourceCodeBtn(
      {
        super.key,
        // required this.train, required this.onTap
      });

  @override
  Widget build(BuildContext context) {
    return  // view source code button
      Container(
        margin: EdgeInsets.all(5),
        child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.rocket_launch, color: Colors.deepPurple, size: 60),
                        SizedBox(height: 20),
                        Text(
                          'Coming Soon!',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'This feature is under development.\nStay tuned for updates!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(height: 25),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          icon: Icon(Icons.check),
                          label: Text("Got it", style: TextStyle(color: Colors.white)),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Card(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                'View Source Code',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      );
    //End of view source code button
  }
}