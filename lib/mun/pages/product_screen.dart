import 'package:flutter/material.dart';
import 'package:my_flutter_app/mun/widgets/product_filter_sort_widget.dart';
import 'package:my_flutter_app/mun/widgets/product_card_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => Navigator.pop(context),
            borderRadius: BorderRadius.circular(50),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search...",
              hintStyle: const TextStyle(color: Colors.grey),
              border: InputBorder.none,
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(height: 20),

              /// Top Row: Products + Filters + Sort
              ProductFilterSortWidget(),


              const SizedBox(height: 20),

              /// Product Grid
              Expanded(
                child: GridView.builder(
                  itemCount: popularProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 items per row
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8, // adjust item height/width
                  ),
                  itemBuilder: (context, index) {
                    return ProductCardWidget(
                      imageUrl: popularProducts[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<String> popularProducts = [
  'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747224867g4T3r1.webp',
  'http://mun.market/uploads/media_manager/user_id_368/2025_08_06_mun_africa_1754481995D5s6I4.webp',
  'http://mun.market/uploads/media_manager/user_id_268/2025_05_13_mun_africa_1747149032O2S1m8.webp',
  'http://mun.market/uploads/shop/user_268/2025_04_25_mun_africa_1745598222U1F7U4.webp',
  'http://mun.market/uploads/media_manager/user_id_334/2025_06_10_mun_africa_1749571586R6L3F4.webp',
  'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747218842w9P8o7.webp',
  'http://mun.market/uploads/media_manager/user_id_268/2025_05_13_mun_africa_1747150275O3y9y9.webp',
  'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747224867g4T3r1.webp',
  'http://mun.market/uploads/media_manager/user_id_368/2025_08_06_mun_africa_1754481995D5s6I4.webp',
  'http://mun.market/uploads/media_manager/user_id_268/2025_05_13_mun_africa_1747149032O2S1m8.webp',
  'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747220362w5n2F1.webp',
  'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747224072h6X2Q9.webp',
  'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747218542y7n9S1.webp',
  'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747209524J2V9K6.webp',
  'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747224867g4T3r1.webp',
  'http://mun.market/uploads/media_manager/user_id_368/2025_08_06_mun_africa_1754481995D5s6I4.webp',
  'http://mun.market/uploads/media_manager/user_id_268/2025_05_13_mun_africa_1747149032O2S1m8.webp',
  'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747219763G9M4S2.webp',
  'http://mun.market/uploads/media_manager/user_id_334/2025_06_10_mun_africa_1749570908G4p2g9.webp',
  'http://mun.market/uploads/shop/user_268/2025_04_25_mun_africa_1745598222U1F7U4.webp',
];
