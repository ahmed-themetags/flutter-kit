import 'package:flutter/material.dart';

class EcommerceHome extends StatefulWidget {
  const EcommerceHome({super.key});

  @override
  State<EcommerceHome> createState() => _EcommerceHomeState();
}

class _EcommerceHomeState extends State<EcommerceHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Ecommerce Application',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(2, 2),
                blurRadius: 4,
              ),
            ],

          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //row / horizontal
        // mainAxisAlignment: MainAxisAlignment.end, //column / vertical
        children: [
          // 🔹 Title (above the scrollable row)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Product Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          // 🔸// 🔸 Horizontal Product Category Row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 8), // Padding at start
                horizontalProductImage('assets/images/n.png'),
                horizontalProductImage('assets/images/dano.jpeg'),
                horizontalProductImage('assets/images/laptop.jpeg'),
                horizontalProductImage('assets/images/1.jpeg'),
                horizontalProductImage('assets/images/2.jpeg'),
                horizontalProductImage('assets/images/dano.jpeg'),
                horizontalProductImage('assets/images/3.jpeg'),
                horizontalProductImage('assets/images/4.jpeg'),
                horizontalProductImage('assets/images/5.jpeg'),
              ],
            ),
          ),

          // 🔹 Brand Title
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 8, right: 8),
            child: Text(
              'Brand List',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // 🔸 Horizontal Brand Row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 8),
                tagImage('assets/images/potato.jpeg'),
                tagImage('assets/images/egg.jpeg'),
                tagImage('assets/images/camera.jpeg'),
                tagImage('assets/images/laptop.jpeg'),
              ],
            ),
          ),

          // 🔹 Vertical Product List Title
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 8, right: 8),
            child: Text(
              'All Products',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          // 🔸 Y-axis Product List
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          //       SizedBox(width: 8),
          //       tagImage('assets/images/potato.jpeg'),
          //       tagImage('assets/images/egg.jpeg'),
          //       tagImage('assets/images/camera.jpeg'),
          //     ],
          //   ),
          // ),


        ],
      ),

      // body: SingleChildScrollView(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       productImage('assets/images/n.png'),
      //       productImage('assets/images/potato.jpeg'),
      //       productImage('assets/images/dano.jpeg'),
      //       productImage('assets/images/laptop.jpeg'),
      //       productImage('assets/images/onion.jpeg'),
      //       productImage('assets/images/egg.jpeg'),
      //       productImage('assets/images/dano.jpeg'),
      //       SizedBox(
      //         height: 20,
      //       ),
      //
      //       SizedBox(height: 20),
      //
      //       // 🔸 Horizontal Scroll
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('Featured Products', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      //       ),
      //       SingleChildScrollView(
      //         scrollDirection: Axis.horizontal,
      //         child: Row(
      //           children: [
      //             horizontalProductImage('assets/images/n.png'),
      //             horizontalProductImage('assets/images/potato.jpeg'),
      //             horizontalProductImage('assets/images/dano.jpeg'),
      //           ],
      //         ),
      //       ),
      //
      //     ],
      //   ),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.train),
            label: 'Train App',
          ),
        ],
      ),
    );
  }
}



Widget productImage(String imagePath, {String? title}) {
  return Container(
    height: 150,
    margin: EdgeInsets.all(4),
    child: Image.asset(
      imagePath,
      width: double.infinity,
      // height: 200, // Adjust as needed
      fit: BoxFit.cover,
    ),
  );
}

// 🖼️ Horizontal Image Widget
Widget horizontalProductImage(String imagePath) {
  return Container(
    height: 150,
    width: 140,//height must needed for x axis
    margin: EdgeInsets.symmetric(horizontal: 8),
    // child: Image.asset(
    //   imagePath,
    //   width: double.infinity,
    //   // height: 200, // Adjust as needed
    //   fit: BoxFit.cover,
    // ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
  ); 
}

Widget tagImage(String imagePath) {
  return Container(
    height: 120,
    width: 140,
    margin: EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
  );
}



