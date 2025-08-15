import 'package:flutter/material.dart';
import 'package:my_flutter_app/mun/widgets/carousel_with_dots.dart';
import 'package:my_flutter_app/mun/widgets/our_popular_product_widget.dart';
import 'package:my_flutter_app/mun/widgets/shop_by_category.dart';
import 'package:my_flutter_app/mun/widgets/shop_widget.dart';
import 'package:my_flutter_app/mun/widgets/weekly_best_deal_products.dart';

class MunHomeWidget extends StatelessWidget {
  const MunHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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

