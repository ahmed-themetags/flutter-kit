import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWithDots extends StatefulWidget {
  const CarouselWithDots({super.key});

  @override
  State<CarouselWithDots> createState() => _CarouselWithDotsState();
}

class _CarouselWithDotsState extends State<CarouselWithDots> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;

  final List<String> imgList = const [
    'https://mun.market/uploads/sliders/2025_07_22_mun_africa_1753200415c0G6V0.webp',
    'https://mun.market/uploads/sliders/2025_07_23_mun_africa_1753262315o1e1n2.webp',
    'https://mun.market/uploads/sliders/2025_06_14_mun_africa_1749940317t2I1q9.webp',
    // 'https://picsum.photos/id/1016/600/300',
    // 'https://picsum.photos/id/1018/600/300',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, // Total height including dots
      width: double.infinity, // Make full width
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              height: 150,
              autoPlay: true,
              enlargeCenterPage: false, // ✅ Remove extra margin
              viewportFraction: 1.0, // ✅ Full width, no horizontal gap
              onPageChanged: (index, reason) {
                setState(() => _currentIndex = index);
              },
            ),
            items: imgList.map((item) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(0), // optional: remove rounded edges
                child: Image.network(
                  item,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            }).toList(),
          ),
          Positioned(
            bottom: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                final isActive = _currentIndex == entry.key;
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: isActive ? 12 : 8,
                    height: isActive ? 12 : 8,
                    margin: EdgeInsets.zero, // ✅ Remove horizontal margin
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isActive ? Colors.purple : Colors.purple[200],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
