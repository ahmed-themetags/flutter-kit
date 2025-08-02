import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/widgets/navigation_button_card.dart';
import 'package:my_flutter_app/widgets/view_source_code_btn.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

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
                        'List View Example',
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

                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "When used in ListView inside a Column (or other scrollable widget like SingleChildScrollView), it needs help understanding its height. For that Need to Wrap it with Expanded or Flexible OR move it out of the Column.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 16,
                          height: 2,
                        ),
                      ),
                    ),


                    Divider(height: 70),
                    Expanded(
                      child: ListView(
                        children: [
                          ListTile(
                            leading: Image.asset('assets/images/1.jpeg', width: 50, height: 50, fit: BoxFit.cover),
                            title: Text('Ahmed Ullah'),
                            subtitle: Text('ahmed@gmail.com'),
                          ),

                          Divider(),

                          ListTile(
                            leading: Image.asset('assets/images/2.jpeg', width: 50, height: 50, fit: BoxFit.cover),
                            title: Text('Rashid Ali'),
                            subtitle: Text('rashid@gmailcom'),
                          ),
                          Divider(),

                          ListTile(
                            leading: Image.asset('assets/images/3.jpeg', width: 50, height: 50, fit: BoxFit.cover),
                            title: Text('Product 3'),
                            subtitle: Text('Description 3'),
                          ),
                          Divider(),
                          ListTile(
                            leading: Image.asset('assets/images/1.jpeg', width: 50, height: 50, fit: BoxFit.cover),
                            title: Text('Ahmed Ullah'),
                            subtitle: Text('ahmed@gmail.com'),
                          ),

                          Divider(),

                          ListTile(
                            leading: Image.asset('assets/images/2.jpeg', width: 50, height: 50, fit: BoxFit.cover),
                            title: Text('Rashid Ali'),
                            subtitle: Text('rashid@gmailcom'),
                          ),
                          Divider(),

                          ListTile(
                            leading: Image.asset('assets/images/3.jpeg', width: 50, height: 50, fit: BoxFit.cover),
                            title: Text('Product 3'),
                            subtitle: Text('Description 3'),
                          ),
                          Divider(),
                          ListTile(
                            leading: Image.asset('assets/images/1.jpeg', width: 50, height: 50, fit: BoxFit.cover),
                            title: Text('Ahmed Ullah'),
                            subtitle: Text('ahmed@gmail.com'),
                          ),

                          Divider(),

                          ListTile(
                            leading: Image.asset('assets/images/2.jpeg', width: 50, height: 50, fit: BoxFit.cover),
                            title: Text('Rashid Ali'),
                            subtitle: Text('rashid@gmailcom'),
                          ),
                          Divider(),

                          ListTile(
                            leading: Image.asset('assets/images/3.jpeg', width: 50, height: 50, fit: BoxFit.cover),
                            title: Text('Product 3'),
                            subtitle: Text('Description 3'),
                          ),
                          Divider(),


                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child:    ListTile(
                          //     leading: Container(
                          //       width: 50,
                          //       height: 50,
                          //       decoration: BoxDecoration(
                          //         shape: BoxShape.circle,
                          //         border: Border.all(color: Colors.blue, width: 2),
                          //         image: DecorationImage(
                          //           image: AssetImage('assets/images/2.jpeg'),
                          //           fit: BoxFit.cover,
                          //         ),
                          //       ),
                          //     ),
                          //     title: Text(
                          //       'Rashid Ali',
                          //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          //     ),
                          //     subtitle: Text(
                          //       'rashid@gmail.com',
                          //       style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                          //     ),
                          //   ),
                          // )
                        ],

                      ),
                    ),





                  ],
              ),


          ),
      )
    );
  }
}


final List<String> productLists = [
  'assets/images/11.png',
  'assets/images/12.png',
  'assets/images/13.webp',
  'assets/images/14.webp',
  // 'assets/images/15.webp',
  // 'assets/images/16.webp',
  // 'assets/images/23.webp',
  // 'assets/images/24.webp',
  // 'assets/images/25.webp',
  // 'assets/images/17.webp',
  // 'assets/images/18.webp',
  // 'assets/images/19.webp',
  'assets/images/20.webp',
  'assets/images/21.webp',
  'assets/images/22.webp',
  'assets/images/26.webp',
  'assets/images/27.webp',
  'assets/images/28.webp',
  'assets/images/29.webp',
  'assets/images/30.webp',
];

