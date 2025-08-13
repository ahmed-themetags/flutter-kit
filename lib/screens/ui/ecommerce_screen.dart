import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_flutter_app/features/product/providers/product_provider.dart';
import 'package:my_flutter_app/features/product/views/product_details.dart';

class EcommerceScreen extends ConsumerWidget {
  const EcommerceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productsProvider);

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.orange.shade400,
        title: const Center(
          child: Text(
            'E - Commerce Shop',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: productsAsync.when(
        data: (products) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Top Slider
              CarouselSlider(
                options: CarouselOptions(
                  height: 160,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: products.map((product) {
                  return Builder(
                    builder: (context) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: product['image'] != null
                            ? Image.network(
                          product['image'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        )
                            : Container(
                          color: Colors.grey[300],
                          child: const Icon(Icons.image, size: 50),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

              const SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Best Products',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),


              // Product Grid
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    final product = products[index];

                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailScreen(product: product),
                          ),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: product['image'] != null
                                          ? Image.network(
                                        product['image'],
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      )
                                          : Container(
                                        color: Colors.grey[300],
                                        child: const Icon(Icons.image, size: 40),
                                      ),
                                    ),
                                    Positioned(
                                      top: 6,
                                      right: 6,
                                      child: Column(
                                        children: [
                                          // Wishlist Button
                                          GestureDetector(
                                            onTap: () {
                                              // Add to wishlist logic here
                                              debugPrint('Added to wishlist: ${product['title']}');
                                            },
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white.withOpacity(0.8),
                                              radius: 16,
                                              child: const Icon(
                                                Icons.favorite_border,
                                                size: 18,
                                                color: Colors.red,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          // Add to Cart Button
                                          GestureDetector(
                                            onTap: () {
                                              // Add to cart logic here
                                              debugPrint('Added to cart: ${product['title']}');
                                            },
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white.withOpacity(0.8),
                                              radius: 16,
                                              child: const Icon(
                                                Icons.add_shopping_cart,
                                                size: 18,
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                product['title'] ?? '',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "\$${product['price'] ?? '0'}",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.green[700],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
