import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: 160, // fixed width
        height: 220, // fixed height
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                imageUrl,
                height: 110,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            // Review stars
            Row(
              children: const [
                Icon(Icons.star, color: Colors.amber, size: 16),
                Icon(Icons.star, color: Colors.amber, size: 16),
                Icon(Icons.star, color: Colors.amber, size: 16),
                Icon(Icons.star_half, color: Colors.amber, size: 16),
                Icon(Icons.star_border, color: Colors.amber, size: 16),
                SizedBox(width: 4),
                Text('(120)', style: TextStyle(fontSize: 12)),
              ],
            ),
            const SizedBox(height: 7),
            // Title
            Flexible(
              child: Text(
                'PORTE LAMNE BLINDE 2 BATTANTS',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // const Spacer(),
            SizedBox(height: 10),
            const Text(
              '\$59.99',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
