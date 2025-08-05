import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouseWidget extends StatelessWidget {
  const CarouseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'assets/images/ecommerce.jpg',
      'assets/images/banner1.jpeg',
      'assets/images/banner2.jpeg',
      'assets/images/banner3.jpeg',
      'assets/images/8.png',
      'assets/images/9.png',
      'assets/images/11.png',
      'assets/images/12.png',
      'assets/images/6.png',
      'assets/images/n.png',
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 250,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 16/9,
        autoPlayInterval: Duration(seconds: 3),
      ),
      items: imageUrls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  url, // make sure 'url' is a local asset path
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
