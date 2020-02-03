import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycling_app/Widget/carousel_page.dart';
import '../Provider/recycling_provider.dart';


class Carousel extends StatefulWidget{
  
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {

  PageController _ctrl;
  int currentPage = 0;
  @override
  initState(){
    _ctrl = PageController(
      initialPage: 0, 
      viewportFraction: 0.8,
      keepPage: false
    );
    _ctrl.addListener((){
      int next = _ctrl.page.round();
      if (currentPage != next){
        setState(() {
          currentPage = next;
        });
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  var recyclingProvider2 = Provider.of<RecyclingProvider>(context);
  return Center(
    child: AspectRatio(
        aspectRatio: 13/20,
        child: PageView.builder(
        scrollDirection: Axis.horizontal,
          controller: _ctrl,
          itemCount: recyclingProvider2.data.length,
          itemBuilder: (context, courentIndex){
            bool active = courentIndex == currentPage;
            return PageCarousel(active, recyclingProvider2.data[courentIndex]);
          },
        ),
    ),
  );
  }
}