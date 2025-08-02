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


              //---------------------------------------------
              // List View Product List
              //---------------------------------------------
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text('List View Example', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _customListTile('assets/images/1.jpeg', 'Ahmed Ullah', 'ahmed@gmail.com'),
                  Divider(),
                  _customListTile('assets/images/2.jpeg', 'Rashid Ali', 'rashid@gmail.com'),
                  Divider(),
                  _customListTile('assets/images/3.jpeg', 'Product 3', 'Description 3'),
                  Divider(),
                  Text('System 2'),
                  Divider(),
                  Divider(),


                  ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 2),
                        image: DecorationImage(
                          image: AssetImage('assets/images/2.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      'Rashid Ali',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'rashid@gmail.com',
                      style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                    ),
                  ),
                  Divider(),


                  // System 2
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
                ],
              ),
              //---------------------------------------------
              // End of List View Product List
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

Widget _customListTile(String imagePath, String title, String subtitle) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
    child: Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blueGrey, width: 2),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}






