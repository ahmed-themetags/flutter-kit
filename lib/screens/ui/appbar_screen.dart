import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/widgets/navigation_button_card.dart';
import 'package:my_flutter_app/widgets/view_source_code_btn.dart';

class AppbarScreen extends StatelessWidget {
  const AppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 4,
            titleSpacing: 16,
            title: Text(
              'Flutter UI Kids',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search, color: Colors.grey[800]),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border, color: Colors.grey[800]),
                onPressed: () {},
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  IconButton(
                    icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey[800]),
                    onPressed: () {},
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      constraints: BoxConstraints(minWidth: 16, minHeight: 16),
                      child: Text(
                        '3', // Cart item count
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),

                    // const Divider(
                    //   thickness: 5,
                    //   color: Colors.orange,
                    //   height: 50
                    // ),
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

                    SizedBox(height: 30),
                    Center(
                      child: Text("🎨 More App Bar Example", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ),

                    Divider(),
                    AppBar(
                      title: Text('Gradient AppBar'),
                      flexibleSpace: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.purple, Colors.blue],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    AppBar(
                      backgroundColor: Colors.white,
                      elevation: 4,
                      titleSpacing: 16,
                      title: Text(
                        'Flutter UI Kids',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      actions: [
                        IconButton(
                          icon: Icon(Icons.search, color: Colors.grey[800]),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite_border, color: Colors.grey[800]),
                          onPressed: () {},
                        ),
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            IconButton(
                              icon: Icon(Icons.shopping_cart_outlined, color: Colors.grey[800]),
                              onPressed: () {},
                            ),
                            Positioned(
                              right: 8,
                              top: 8,
                              child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                constraints: BoxConstraints(minWidth: 16, minHeight: 16),
                                child: Text(
                                  '3', // Cart item count
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),

                    AppBar(
                      title: Text(
                        'Dashboard',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      centerTitle: true,
                      backgroundColor: Colors.white12,
                      elevation: 5, // shadow depth
                      leading: Icon(Icons.menu), // left side

                      // Right side
                      actions: [
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 30),

                    AppBar(
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.white70),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.indigo,
                    ),
                    SizedBox(height: 30),

                    AppBar(
                      title: Text(
                        'Dashboard',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      centerTitle: true,
                      backgroundColor: Colors.deepPurple,
                      elevation: 5, // shadow depth
                      leading: Icon(Icons.menu), // left side
                      actions: [
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                      ],
                    ),
                ],
            ),
          ),
      )
    );
  }
}
