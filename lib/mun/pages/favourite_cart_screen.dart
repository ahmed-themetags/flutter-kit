import 'package:flutter/material.dart';

class FavouriteCartScreen extends StatelessWidget {
  const FavouriteCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Products'), // ✅ single screen title
        centerTitle: true, // optional: center the title
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: favouriteProducts.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            child: Material(
              elevation: 6,
              shadowColor: Colors.black54,
              borderRadius: BorderRadius.circular(5),
              child: ListTile(
                leading: SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      favouriteProducts[index]['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(favouriteProducts[index]['name'] ??
                    favouriteProducts[index]['title']!),
                subtitle: Text(favouriteProducts[index]['message']!),
                trailing: const Icon(Icons.favorite, color: Colors.red),
              ),
            ),
          );
        },
      ),
    );

  }
}

final List<Map<String, String>> favouriteProducts = [
  {
    'title': 'PORTE LAMNE BLINDE 2',
    'message': 'Hey! How are you doing today?',
    'image':
    'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747220362w5n2F1.webp',
  },
  {
    'name': 'Rashid Ali',
    'message': 'Let\'s catch up tomorrow.',
    'image':
    'http://mun.market/uploads/shop/user_268/2025_04_25_mun_africa_1745598222U1F7U4.webp',
  },
  {
    'name': 'Maria Gomez',
    'message': 'Meeting has been rescheduled to 3 PM.',
    'image':
    'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747218542y7n9S1.webp',
  },
  {
    'name': 'John Carter',
    'message': 'Thanks for your help!',
    'image':
    'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747209524J2V9K6.webp',
  },
  {
    'name': 'Emily Stone',
    'message': 'Can you send me the files?',
    'image':
    'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747219763G9M4S2.webp',
  },
  {
    'name': 'PORTE LAMNE BLINDE 2 BATTANTS',
    'message': 'I\'ll be late to the office.',
    'image':
    'http://mun.market/uploads/media_manager/user_id_268/2025_05_14_mun_africa_1747224867g4T3r1.webp',
  },
];
