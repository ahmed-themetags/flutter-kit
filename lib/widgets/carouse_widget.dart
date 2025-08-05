import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouseWidget extends StatelessWidget {
  const CarouseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'assets/images/f1.avif',
      'assets/images/f2.avif',
      'assets/images/f3.png',
      'assets/images/f4.png',
      'assets/images/f5.png',
      'assets/images/f6.jpg',
      // 'assets/images/ecommerce.jpg',
      // 'assets/images/banner1.jpeg',
      // 'assets/images/banner2.jpeg',
      // 'assets/images/banner3.jpeg',
      // 'assets/images/8.png',
      // 'assets/images/9.png',
      // 'assets/images/11.png',
      // 'assets/images/12.png',
      // 'assets/images/6.png',
      // 'assets/images/n.png',
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 250,
        autoPlay: true,
        enlargeCenterPage: false,       // Turn off enlargement
        viewportFraction: 1.0,          // Full width
        aspectRatio: 16 / 9,
        autoPlayInterval: Duration(seconds: 2),
      ),
      items: imageUrls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  url,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            );
          },
        );
      }).toList(),
    );

  }
}
