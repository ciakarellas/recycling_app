import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Carousel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Swiper(
          itemBuilder: (BuildContext context,int index){
            return new Image.network(
              "http://via.placeholder.com/288x188",fit: 
            BoxFit.contain,
            );
          },
          itemCount: 10,
          viewportFraction: 0.9,
          scale: 0.9,
      );
  }
  
}