import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/widgets/navigation_button_card.dart';
import 'package:my_flutter_app/widgets/view_source_code_btn.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

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
                        'Container Example',
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
                
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Scrollable Container", style: TextStyle(fontSize: 18, color: Colors.orange),),
                          ),

                          Container(
                            width: 400,
                            height: 350,
                            decoration: BoxDecoration(
                              color: Colors.orange, // 🔵 Background color behind the image
                              image: DecorationImage(
                                image: AssetImage('assets/images/background.jpg'),
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(
                                color: Colors.grey[300]!,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.85), // 🔵 Overlay for content readability
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    GridView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 10,
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                      ),
                                      itemBuilder: (context, index) {
                                        return Container(
                                          margin: EdgeInsets.all(5),
                                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey[300]!,
                                              width: 2,
                                            ),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                            productLists[index],
                                            height: 120,
                                            fit: BoxFit.contain,
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),



                          SizedBox(
                            height: 50,
                          ),

                          Text("Shape and Border Radius not work same column", style: TextStyle(fontSize: 18),),

                          Container(
                            width: 200,
                            height: 100,
                            // color: Colors.green,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  width: 2
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment(0.0, 0.0),
                            child: Text(
                              'Example 01',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ),
                
                          SizedBox(
                            height: 30,
                          ),
                
                
                          // With Shadow Example
                          
                          Text("Shape and Border Radius not work same column", style: TextStyle(fontSize: 18),),
                
                          Container(
                            width: 250,
                            height: 250,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.grey.shade300,
                                    width: 2
                                ),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade500,
                                      blurRadius: 15,
                                      offset: Offset(20, 25),
                                      spreadRadius: 1
                                  ),
                
                                  BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 15,
                                      offset: Offset(-4, -4),
                                      spreadRadius: 1
                                  ),
                                ]
                            ),
                            alignment: Alignment(0.0, 0.0),
                            child: Text(
                              'Example 02',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ),
                
                
                          SizedBox(
                            height: 40,
                          ),
                          // With Shadow Example
                          Container(
                            width: 250,
                            height: 250,
                            decoration: BoxDecoration(
                
                                border: Border.all(
                                    color: Colors.grey.shade300,
                                    width: 2
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade500,
                                      blurRadius: 15,
                                      offset: Offset(4, 4),
                                      spreadRadius: 1
                                  ),
                
                                  BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 15,
                                      offset: Offset(-4, -4),
                                      spreadRadius: 1
                                  ),
                                ]
                            ),
                            alignment: Alignment(0.0, 0.0),
                            child: Text(
                              'Example 03',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ),
                
                
                          // With Shadow Example
                          Container(
                            width: 250,
                            height: 250,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle, // 👈 Makes it perfectly round
                              // shape: BoxShape.rectangle, // 👈 Makes it perfectly round
                              // color: Colors.white,
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 2,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade500,
                                  blurRadius: 15,
                                  offset: Offset(4, 4),
                                  spreadRadius: 1,
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 15,
                                  offset: Offset(-4, -4),
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Example 03',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          )
                
                
                        ],
                      ),
                    ),
                
                
                  ],
                ),
              )
            ),
          )
    );
  }
}

final List<String> productLists = [
  'assets/images/ecommerce.jpg',
  'assets/images/banner1.jpeg',
  'assets/images/banner2.jpeg',
  'assets/images/banner3.jpeg',
  'assets/images/8.png',
  'assets/images/9.png',
  'assets/images/11.png',
  'assets/images/12.png',
  'assets/images/6.png',
  'assets/images/n.png',
];

