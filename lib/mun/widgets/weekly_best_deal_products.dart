import 'package:flutter/material.dart';
import 'package:my_flutter_app/mun/widgets/product_card_widget.dart';

class WeeklyBestDealProducts extends StatelessWidget {
  const WeeklyBestDealProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
