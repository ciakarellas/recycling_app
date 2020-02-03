import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycling_app/Provider/recycling_provider.dart';
import 'package:recycling_app/Widget/carousel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final prov = Provider.of<RecyclingProvider>(context);
   // TODO: implement if else statment to display child in this Container. 
   // my idea is that to display correct view depend on wich screen user select
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(

        gradient: LinearGradient(
          colors: [Colors.blue[100], Colors.blue[50], Colors.blue[50], Colors.white60],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
          )
      ),
      child: Carousel(),
    );
  }
  
}

