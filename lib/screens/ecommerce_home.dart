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
              SizedBox(
                height: 2,
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset('assets/images/banner2.jpeg', height: 150, width: double.infinity, fit: BoxFit.cover),
              ),
              SizedBox(
                height: 5,
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
                    horizontalProductImage('assets/images/11.png'),
                    horizontalProductImage('assets/images/dano.jpeg'),
                    horizontalProductImage('assets/images/12.png'),
                    horizontalProductImage('assets/images/13.webp'),
                    horizontalProductImage('assets/images/14.webp'),
                    horizontalProductImage('assets/images/dano.jpeg'),
                    horizontalProductImage('assets/images/15.webp'),
                    horizontalProductImage('assets/images/16.webp'),
                    horizontalProductImage('assets/images/17.webp'),
                    horizontalProductImage('assets/images/18.webp'),
                  ],
                ),
              ),

              SizedBox(height: 20),


              // 🔹 Brand Title
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
                child: Text(
                  'Most Selling Products',
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
                    tagImage('assets/images/18.webp'),
                    tagImage('assets/images/17.webp'),
                    tagImage('assets/images/16.webp'),
                    tagImage('assets/images/15.webp'),
                    tagImage('assets/images/14.webp'),
                    tagImage('assets/images/banana.webp'),
                    tagImage('assets/images/camera.jpeg'),
                    tagImage('assets/images/laptop.jpeg'),
                  ],
                ),
              ),


              SizedBox(height: 20),

              // 🔹 Brand Title
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
                child: Text(
                  'Grocery Items',
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
                    tagImage('assets/images/23.webp'),
                    tagImage('assets/images/11.png'),
                    tagImage('assets/images/13.webp'),
                    tagImage('assets/images/14.webp'),
                    tagImage('assets/images/15.webp'),
                    tagImage('assets/images/16.webp'),
                  ],
                ),
              ),


              SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Image.asset('assets/images/banner1.jpeg', height: 150, width: double.infinity, fit: BoxFit.cover),
              ),



              //---------------------------------------------
              // Product List start with gridView.builder
              //---------------------------------------------
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Products List With GridView.Builder', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),

              GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  // mainAxisExtent: 200,
                ),
                itemCount: productLists.length,
                itemBuilder: (context, index) {
                  // return Image.asset(productLists[index], fit: BoxFit.cover);
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Image.asset(productLists[index], fit: BoxFit.cover, width: 160, height: 160),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                        ),
                      ],
                    ),
                  );
                },
              ),
              //---------------------------------------------
              // End of Product List
              //---------------------------------------------

              // 🔸 Product Images in Horizontal Scroll
              // SingleChildScrollView(
              //   child: Column(
              //     children: [
              //       SizedBox(width: 8),
              //       Image.asset('assets/images/n.png', width: 150),
              //       SizedBox(width: 10),
              //       Image.asset('assets/images/2.jpeg', width: 150),
              //       SizedBox(width: 10),
              //       Image.asset('assets/images/1.jpeg', width: 150),
              //       SizedBox(width: 10),
              //       Image.asset('assets/images/3.jpeg', width: 150),
              //       SizedBox(width: 10),
              //       Image.asset('assets/images/n.png', width: 150),
              //       SizedBox(width: 10),
              //       Image.asset('assets/images/2.jpeg', width: 150),
              //       SizedBox(width: 10),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 20), // Optional bottom padding

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








