import 'package:flutter/material.dart';
import 'package:my_flutter_app/mun/widgets/product_card_widget.dart';

class OurPopularProductWidget extends StatelessWidget {
  const OurPopularProductWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> popularProducts = [
      'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747220362w5n2F1.webp',
      'http://mun.market/uploads/shop/user_268/2025_04_25_mun_africa_1745598222U1F7U4.webp',
      'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747218542y7n9S1.webp',
      'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747209524J2V9K6.webp',
      'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747219763G9M4S2.webp',
      'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747224867g4T3r1.webp',
    ];

    return  SingleChildScrollView(scrollDirection: Axis.vertical,
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75, // better card height
          ),
          itemCount: popularProducts.length,
          itemBuilder: (context, index) {
            return ProductCardWidget(
                imageUrl: popularProducts[index]
            );
          },
        )
    );
  }
}


