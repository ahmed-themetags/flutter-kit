import 'package:flutter/material.dart';

class ShopWidget extends StatelessWidget {
  const ShopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> shops = [
      'http://mun.market/uploads/shop/user_268/2025_04_25_mun_africa_1745598222U1F7U4.webp',
      'http://mun.market/uploads/shop/user_269/2025_04_24_mun_africa_1745520253k3V2A7.webp',
      'http://mun.market/uploads/shop/user_277/2025_05_08_mun_africa_1746706573x1Y2s0.webp',
      'http://mun.market/uploads/shop/user_280/2025_04_30_mun_africa_1746012085f0c3R1.webp',
      'http://mun.market/uploads/shop/user_282/2025_04_30_mun_africa_1746017249p1Q8T2.webp',
      'http://mun.market/uploads/shop/user_286/2025_05_03_mun_africa_1746284802U7m5K2.webp',
    ];

    return SizedBox(
      height: 300, // enough height for card + circle image
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // Wrap every 2 cards inside a Column so they stack vertically
            Row(
              children: List.generate(
                shops.length, // total number of items
                    (index) => SizedBox(
                  width: MediaQuery.of(context).size.width / 2, // 2 per row width
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Main Image + Circle Image Overlay
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              // Main image
                              SizedBox(
                                height: 150,
                                width: double.infinity,
                                child: Image.network(
                                  shops[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // Circular image overlay
                              Positioned(
                                bottom: -40, // overlap position
                                left: 0,
                                right: 0,
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 38,
                                    backgroundImage: NetworkImage(
                                      shops[index],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 50),

                          // Title
                          Text(
                            'Shop Name $index',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),

                          // Price / Info
                          const SizedBox(height: 5),
                          const Text(
                            'Total Products',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
