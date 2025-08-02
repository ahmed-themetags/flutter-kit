import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/widgets/navigation_button_card.dart';
import 'package:my_flutter_app/widgets/view_source_code_btn.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({super.key});

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
                        'List View Builder Example',
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

                        // View Source Code Button
                        ViewSourceCodeBtn(),
                      ]
                    ),
                    Divider(),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(15),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.orange,
                                  width: 2
                              ),

                            ),
                            child: Text(
                              "When used in ListView.builder inside a Column (or other scrollable widget like SingleChildScrollView), it needs help understanding its height."
                                  "For that Need to Wrap it with Expanded or Flexible OR move it out of the Column.",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 20,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(10),
                              child: Card(
                                color: Colors.orange,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                  child: Text(
                                    "ListView Example ${index + 1}",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                ],
            ),
          ),
      )
    );
  }
}
