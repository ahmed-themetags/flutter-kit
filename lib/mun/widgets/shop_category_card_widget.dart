import 'package:flutter/material.dart';

class ShopCategoryCardWidget extends StatelessWidget {
  const ShopCategoryCardWidget({
    super.key,
    required this.imageUrl,
    required this.category,
    required this.quantity,
  });

  final String imageUrl;
  final String category;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipOval(
                child: Image.network(
                  imageUrl, // use passed parameter instead of hardcoded link
                  height: 80,
                  width: 85,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                category,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                "$quantity Items",
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
