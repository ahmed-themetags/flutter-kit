import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/widgets/navigation_button_card.dart';
import 'package:my_flutter_app/widgets/view_source_code_btn.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

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
                      'Card Example',
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

                  SizedBox(height: 10),

                  Card(
                    shape: CircleBorder(),
                    elevation: 10,
                    color: Colors.orange,
                    child: Container(
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      child: Text(
                        'Circle\nCard',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),


                  Card(
                    elevation: 15,
                    color: Colors.green,
                    margin: EdgeInsets.all(30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text('05', style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    ),
                  ),


                  //   Card Example Start
                  Card(
                    elevation: 5,
                    color: Colors.lightBlueAccent,
                    margin: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.person, size: 40, color: Colors.white),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Ahmed Sohel',
                                    style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  )),
                              Text(
                                  'Flutter Developer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ),
                  //   Card Example End
                  Divider(),

                  Card(
                      elevation: 5,
                      color: Colors.green.shade600,
                      margin: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Ahmed Sohel',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    )),
                                Text(
                                    'Flutter Developer',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                  ),



                ],
              )
            ),
          )
    );
  }
}


