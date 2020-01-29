import 'package:flutter/material.dart';
import 'package:recycling_app/Widget/carousel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(

        gradient: LinearGradient(
          colors: [Colors.blue[100], Colors.blue[50], Colors.blue[50], Colors.white60],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
          )
      ),
      child: Center(
        child: Carousel(),
      ),
    );
  }
  
}