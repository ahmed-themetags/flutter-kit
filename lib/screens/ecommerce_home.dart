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

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/6.png', height: 150, width: double.infinity, fit: BoxFit.cover),
              SizedBox(
                height: 20,
              ),

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
                padding: const EdgeInsets.only(top: 30, left: 8, right: 8),
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


              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Image.asset('assets/images/7.png', height: 150, width: double.infinity, fit: BoxFit.cover),
              ),



              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                child: Text('Products List', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),

              // 🔸 Product Images in Horizontal Scroll
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(width: 8),
                    Image.asset('assets/images/n.png', width: 150),
                    SizedBox(width: 10),
                    Image.asset('assets/images/2.jpeg', width: 150),
                    SizedBox(width: 10),
                    Image.asset('assets/images/1.jpeg', width: 150),
                    SizedBox(width: 10),
                    Image.asset('assets/images/3.jpeg', width: 150),
                    SizedBox(width: 10),
                    Image.asset('assets/images/n.png', width: 150),
                    SizedBox(width: 10),
                    Image.asset('assets/images/2.jpeg', width: 150),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 20), // Optional bottom padding

            ],
          ),
        ),
      ),


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
    height: 60,
    width: 75,//height must needed for x axis
    margin: EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
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








