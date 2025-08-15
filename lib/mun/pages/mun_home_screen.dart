import 'package:flutter/material.dart';
import 'package:my_flutter_app/mun/widgets/carousel_with_dots.dart';
import 'package:my_flutter_app/mun/widgets/mun_home_widget.dart';
import 'package:my_flutter_app/mun/widgets/our_popular_product_widget.dart';
import 'package:my_flutter_app/mun/widgets/product_card_widget.dart';
import 'package:my_flutter_app/mun/widgets/shop_by_category.dart';
import 'package:my_flutter_app/mun/widgets/shop_category_card_widget.dart';
import 'package:my_flutter_app/mun/widgets/shop_widget.dart';
import 'package:my_flutter_app/mun/widgets/weekly_best_deal_products.dart';

class MunHomeScreen extends StatefulWidget {
  const MunHomeScreen({super.key});

  @override
  State<MunHomeScreen> createState() => _MunHomeScreenState();
}

class _MunHomeScreenState extends State<MunHomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    MunHomeWidget(),
    const Text('home 2'),
    const Text('home 3'),
    const Text('home 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () => Scaffold.of(context).openDrawer(),
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.menu,
                      size: 28,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        title: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(18),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 40,
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
            ),
            onChanged: (value) {
              debugPrint('Searching for: $value');
            },
          ),
        ),
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Icon(
                      Icons.person_2,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),



                  SizedBox(width: 16),
                  Text(
                    'Login Or Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_right_sharp, color: Colors.black),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.store_mall_directory_outlined,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Shop',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_right_sharp, color: Colors.black),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.shopping_basket_outlined,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Housewife's Basket",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_right_sharp, color: Colors.black),
              onTap: () {
                // Handle item 1 tap
              },
            ),

            Divider(),

            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.shopping_basket_outlined,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Campaign",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_right_sharp, color: Colors.black),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.store_mall_directory_outlined,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Best Merchants",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_right_sharp, color: Colors.black),
              onTap: () {
                // Handle item 1 tap
              },
            ),
          ],
        ),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.purple),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.purple), label: 'Search', ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.purple), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.purple,), label: 'Profile'),
        ],
      ),
    );
  }


}
