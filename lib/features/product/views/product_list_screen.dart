import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/product_provider.dart';

class ProductListScreen extends ConsumerWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productsProvider);

    // Log the AsyncValue itself
    // print('productsAsync');

    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: Text('text'),
    );
  }
}
