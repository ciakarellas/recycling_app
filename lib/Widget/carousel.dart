import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return CarouselSlider(
      height: 500.0,
      viewportFraction: .8,
      enableInfiniteScroll: false,
      aspectRatio: 16/9,
      enlargeCenterPage: true,
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 18.0),
              decoration: BoxDecoration(
                color: Colors.amber
              ),
              child: Text('text $i', style: TextStyle(fontSize: 16.0),)
            );
          },
        );
      }).toList(),
    );
  }
}