import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/products.dart';
import 'package:my_flutter_app/screens/profile_screen.dart';
import 'package:my_flutter_app/widgets/product_card.dart';
class ProductListScreen extends StatelessWidget {

  int currentIndex = 0;

  ProductListScreen({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red, // Change to any color you like
        elevation: 6.0, // Adds shadow under the AppBar
        centerTitle: true,
        shadowColor: Colors.black, // Shadow color
          title: Text(
            'E - Commerce Shop', style: TextStyle(
                fontSize: 24,
                color: Colors.white,
            )
        ),
      ),
      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),

    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}