import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/ecommerce_home.dart';
import 'package:my_flutter_app/screens/home_screen_2.dart';
import 'package:my_flutter_app/screens/ui/appbar_screen.dart';
import 'package:my_flutter_app/screens/ui/card_screen.dart';
import 'package:my_flutter_app/screens/ui/container_screen.dart';
import 'package:my_flutter_app/screens/ui/grid_view_screen.dart';
import 'package:my_flutter_app/screens/ui/list_view_builder_screen.dart';
import 'package:my_flutter_app/screens/ui/list_view_screen.dart';
import 'package:my_flutter_app/screens/ui/scrollable_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text('Flutter UI Kids',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              )
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: const Text(
                      'Flutter UI Kids By Ahmed',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),


                  // Scrollable Row Start
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        GridView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 15,
                            // mainAxisExtent: 200,
                          ),
                          itemCount: topics.length,
                          itemBuilder: (context, index) {
                            var topic = topics[index]!;

                            return InkWell(
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(
                                    builder: (context) => topic['screen']),
                                );
                              },
                              child: Card(
                                color: Colors.orange.shade700,
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(topic['name']!,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    )
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  // Scrollable Row Start

                ],
              ),
            ),
        ),
        ),
    );
  }
}


List<Map<String, dynamic>> topics = [
  {
    'name': 'Scrollable Row',
    'screen': ScrollableRowScreen(),
  },
  {
    'name': 'Grid View Builder',
    'screen': GridViewScreen(), // Replace with actual screen widget
  },
  {
    'name': 'Container',
    'screen': ContainerScreen(),
  },
  {
    'name': 'List View',
    'screen': ListViewScreen(), // Replace with actual screen widget
  },
  {
    'name': 'List View Builder',
    'screen': ListViewBuilderScreen(), // Replace with actual screen widget
  },
  {
    'name': 'App Bar',
    'screen': AppbarScreen(), // Replace with actual screen widget
  },
  {
    'name': 'Card',
    'screen': CardScreen(), // Replace with actual screen widget
  },
  {
    'name': 'Stack & Positioned',
    'screen': CardScreen(), // Replace with actual screen widget
  },
  {
    'name': 'Home 2',
    'screen': Home2Screen(), // Replace with actual screen widget
  },
  {
    'name': 'Ecommerce',
    'screen': EcommerceHome(), // Replace with actual screen widget
  },
  {
    'name': 'Ecommerce',
    'screen': EcommerceHome(), // Replace with actual screen widget
  },
];
