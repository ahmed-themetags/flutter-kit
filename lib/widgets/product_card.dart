import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/models/product.dart';

Widget buildProductCard(Product product) {
  return Container(
    width: 180,
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(color: Colors.grey.shade300, blurRadius: 4, offset: Offset(2, 2)),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
          child: Image.network(
            product.imageUrl,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product.name, style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              // Text(product.stock, style: TextStyle(color: Colors.grey, fontSize: 12)),
              SizedBox(height: 4),
              Text("\$${product.price.toStringAsFixed(2)}", style: TextStyle(color: Colors.teal)),
            ],
          ),
        ),
      ],
    ),
  );
}
