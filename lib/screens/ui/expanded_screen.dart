import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/widgets/navigation_button_card.dart';
import 'package:my_flutter_app/widgets/view_source_code_btn.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:  SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Divider(),
                    Center(
                      child: const Text(
                        'Expanded Example',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),

                    const Divider(),

                    // Back To UI Kids Button
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NavigationButtonCard(
                            label: 'Back To UI Kids',
                            screen: HomeScreen(),
                            color: Colors.orange,
                            fontSize: 14,
                          ),
                          ViewSourceCodeBtn(),
                        ]
                    ),

                    Divider(),

                    const SizedBox(
                      height: 25,
                    ),

                    Text('data'),

                    const SizedBox(
                      height: 25,
                    ),



                  ],
                ),
              )
          ),
        )
    );
  }
}


