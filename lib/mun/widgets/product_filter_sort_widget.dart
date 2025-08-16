import 'package:flutter/material.dart';

class ProductFilterSortWidget extends StatefulWidget {
  const ProductFilterSortWidget({super.key});

  @override
  State<ProductFilterSortWidget> createState() => _ProductFilterSortWidgetState();
}

class _ProductFilterSortWidgetState extends State<ProductFilterSortWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Left side
        const Text(
          'Products',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Right side
        Row(
          children: [
            // Filter dropdown
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30),
              ),
              child: DropdownButton<String>(
                hint: const Text(
                  "Filter",
                  style: TextStyle(fontSize: 12),
                ),
                underline: const SizedBox(),
                isDense: true,       // reduces internal vertical padding
                isExpanded: false,   // keeps the dropdown width tight
                items: ["Newest", "Popular", "Discount"]
                    .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e,
                    style: const TextStyle(fontSize: 12),
                  ),
                ))
                    .toList(),
                onChanged: (value) {},
              ),
            ),

            const SizedBox(width: 10),

            // Sort By dropdown
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30),
              ),
              child: DropdownButton<String>(
                hint: const Text(
                  "Sort By",
                  style: TextStyle(fontSize: 12),
                ),
                underline: const SizedBox(),
                isDense: true,       // reduces internal vertical padding
                isExpanded: false,   // keeps the dropdown width tight
                items: ["Price Low-High", "Price High-Low", "Rating"]
                    .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e,
                    style: const TextStyle(fontSize: 12),
                  ),
                ))
                    .toList(),
                onChanged: (value) {},
              ),
            ),
          ],
        )
      ],
    );
  }
}
