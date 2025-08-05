import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_flutter_app/widgets/carouse_widget.dart';

class MyCarouselSlider extends StatelessWidget {

  MyCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carousel Slider Example')),
      body: Center(
        child: CarouseWidget()
      ),
    );
  }
}
