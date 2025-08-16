import 'package:flutter/material.dart';
import 'package:my_flutter_app/mun/pages/mun_home_screen.dart';
import 'package:my_flutter_app/mun/pages/product_screen.dart';
import 'package:my_flutter_app/mun/widgets/carousel_with_dots.dart';
import 'package:my_flutter_app/mun/widgets/home_appbar_widget.dart';
import 'package:my_flutter_app/mun/widgets/our_popular_product_widget.dart';
import 'package:my_flutter_app/mun/widgets/shop_by_category.dart';
import 'package:my_flutter_app/mun/widgets/shop_widget.dart';
import 'package:my_flutter_app/mun/widgets/weekly_best_deal_products.dart';
import 'package:my_flutter_app/widgets/drawer_widget.dart';


class MunHomeWidget extends StatelessWidget {
  const MunHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbarWidget(),
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
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MunHomeScreen()
              ),
            );
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductScreen()),
            );
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const CarouselWithDots(),
              const SizedBox(height: 35),

              // Weekly Best Deals
              _buildSectionHeader("Weekly Best Deals"),
              const SizedBox(height: 10),
              WeeklyBestDealProducts(),
              const SizedBox(height: 40),

              // Shop By Categories
              _buildSectionHeader("Shop By Categories"),
              const SizedBox(height: 10),
              ShopByCategory(),
              const SizedBox(height: 40),

              // Our Popular Products
              _buildSectionHeader("Our Popular Products"),
              const SizedBox(height: 10),
              OurPopularProductWidget(),
              const SizedBox(height: 40),

              // Our Popular Merchants
              _buildSectionHeader("Our Popular Merchants"),
              const SizedBox(height: 10),
              ShopWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Row(
          children: const [
            Text(
              "View All",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            SizedBox(width: 6),
            RotatedBox(
              quarterTurns: 1,
              child: Icon(Icons.arrow_upward, color: Colors.purple, size: 20),
            ),
          ],
        ),
      ],
    );
  }
}
