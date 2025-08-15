import 'package:flutter/material.dart';
import 'package:my_flutter_app/mun/widgets/shop_category_card_widget.dart';

class ShopByCategory extends StatelessWidget {
  const ShopByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
