import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/widgets/navigation_button_card.dart';
import 'package:my_flutter_app/widgets/view_source_code_btn.dart';

class ScrollableRowScreen extends StatelessWidget {
  const ScrollableRowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  Center(
                    child: const Text(
                      'Scrollable Row Example',
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

                  //main part -  Scrollable Row Start
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                          margin: EdgeInsets.all(5),
                          child: Center(
                            child: Text(
                              'Container',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                          margin: EdgeInsets.all(5),
                          child: Center(
                            child: Text(
                              'Container',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                          margin: EdgeInsets.all(5),
                          child: Center(
                            child: Text(
                              'Container',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                          margin: EdgeInsets.all(5),
                          child: Center(
                            child: Text(
                              'Container',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                          margin: EdgeInsets.all(5),
                          child: Center(
                            child: Text(
                              'Container',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                          margin: EdgeInsets.all(5),
                          child: Center(
                            child: Text(
                              'Container',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Scrollable Row End


                ],
              )
            ),
          )
    );
  }
}


