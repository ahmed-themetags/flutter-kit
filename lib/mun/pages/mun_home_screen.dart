import 'package:flutter/material.dart';
import 'package:my_flutter_app/mun/widgets/carousel_with_dots.dart';
import 'package:my_flutter_app/mun/widgets/product_card_widget.dart';
import 'package:my_flutter_app/mun/widgets/shop_category_card_widget.dart';

class MunHomeScreen extends StatelessWidget {
  const MunHomeScreen({super.key});

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

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const CarouselWithDots(),

                const SizedBox(height: 35),

                // weekly best deals and view all with arrow
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Weekly Best Deals",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        const SizedBox(width: 6),

                        Transform.rotate(
                          angle: 45 * 3.1415926535 / 180, // rotate 90 degrees clockwise
                          child: const Icon(
                            Icons.arrow_upward,
                            color: Colors.purple,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                // Scrollable  weekly best deals products
                // Add more widgets below
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 8), // optional left padding
                      ProductCardWidget(
                        imageUrl: 'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747220362w5n2F1.webp',
                      ),
                      SizedBox(width: 10),
                      ProductCardWidget(
                        imageUrl: 'http://mun.market/uploads/shop/user_268/2025_04_25_mun_africa_1745598222U1F7U4.webp',
                      ),
                      SizedBox(width: 10),
                      ProductCardWidget(
                        imageUrl: 'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747218542y7n9S1.webp',
                      ),
                      SizedBox(width: 10),
                      ProductCardWidget(
                        imageUrl: 'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747209524J2V9K6.webp',
                      ),
                      SizedBox(width: 10),
                      ProductCardWidget(
                        imageUrl: 'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747219763G9M4S2.webp',
                      ),
                      SizedBox(width: 10),
                      ProductCardWidget(
                        imageUrl: 'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747224867g4T3r1.webp',
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40),

                //--------------------------
                // Shop by category
                //--------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Shop By Categories",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        const SizedBox(width: 6),

                        Transform.rotate(
                          angle: 45 * 3.1415926535 / 180, // rotate 90 degrees clockwise
                          child: const Icon(
                            Icons.arrow_upward,
                            color: Colors.purple,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ShopCategoryCardWidget(
                          imageUrl: 'http://mun.market/uploads/media_manager/user_id_1/2025_04_29_mun_africa_1745927695M8M4v6.webp',
                          category: 'Category',
                          quantity: 10,
                      ),
                      SizedBox(width: 10),
                      ShopCategoryCardWidget(
                          imageUrl: 'http://mun.market/uploads/media_manager/user_id_1/2025_04_29_mun_africa_1745929560R8X0b3.webp',
                          category: 'Category',
                          quantity: 10,
                      ),
                      SizedBox(width: 10),
                      ShopCategoryCardWidget(
                          imageUrl: 'http://mun.market/uploads/media_manager/user_id_1/2025_04_29_mun_africa_1745929753W7Y2P7.webp',
                          category: 'Category',
                          quantity: 10,
                      ),
                      SizedBox(width: 10),
                      ShopCategoryCardWidget(
                          imageUrl: 'http://mun.market/uploads/media_manager/user_id_1/2025_04_29_mun_africa_1745929995Z4w9e3.webp',
                          category: 'Category',
                          quantity: 10,
                      ),
                      SizedBox(width: 10),
                      ShopCategoryCardWidget(
                          imageUrl: 'http://mun.market/uploads/media_manager/user_id_1/2025_05_03_mun_africa_1746257706m9J6X0.webp',
                          category: 'Category',
                          quantity: 10,
                      ),
                      SizedBox(width: 10),
                      ShopCategoryCardWidget(
                          imageUrl: 'http://mun.market/uploads/media_manager/user_id_1/2025_05_03_mun_africa_1746258252W8Z6V0.webp',
                          category: 'Category',
                          quantity: 10,
                      ),
                    ],
                  ),
                ),


                SizedBox(height: 40),
                //-----------------------
                //  Our products start
                //-----------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Our Popular Products",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        const SizedBox(width: 6),

                        Transform.rotate(
                          angle: 45 * 3.1415926535 / 180, // rotate 90 degrees clockwise
                          child: const Icon(
                            Icons.arrow_upward,
                            color: Colors.purple,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                // Scrollable  weekly best deals products
                // Add more widgets below

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 8), // optional left padding
                      Column(
                        children: [
                          ProductCardWidget(
                            imageUrl: 'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747220362w5n2F1.webp',
                          ),
                          const SizedBox(height: 10),
                          ProductCardWidget(
                            imageUrl: 'http://mun.market/uploads/shop/user_268/2025_04_25_mun_africa_1745598222U1F7U4.webp',
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          ProductCardWidget(
                            imageUrl: 'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747218542y7n9S1.webp',
                          ),
                          const SizedBox(height: 10),
                          ProductCardWidget(
                            imageUrl: 'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747209524J2V9K6.webp',
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          ProductCardWidget(
                            imageUrl: 'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747219763G9M4S2.webp',
                          ),
                          const SizedBox(height: 10),
                          ProductCardWidget(
                            imageUrl: 'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747224867g4T3r1.webp',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),


                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      )
    );
  }
}
