import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/widgets/navigation_button_card.dart';
import 'package:my_flutter_app/widgets/view_source_code_btn.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    Center(
                      child: const Text(
                        'Grid View Builder Example',
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
            
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: productLists.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.green
                            ),
                            child: Image.asset(productLists[index], fit: BoxFit.cover, width: 160, height: 160),
                          );
                        },
                      ),
                    ),
            
            
                  ],
                )
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
  'assets/images/15.webp',
  'assets/images/16.webp',
  'assets/images/23.webp',
  'assets/images/24.webp',
  'assets/images/25.webp',
  'assets/images/17.webp',
  'assets/images/18.webp',
  'assets/images/19.webp',
  'assets/images/20.webp',
  'assets/images/21.webp',
  'assets/images/22.webp',
  'assets/images/26.webp',
  'assets/images/27.webp',
  'assets/images/28.webp',
  'assets/images/29.webp',
  'assets/images/30.webp',
];