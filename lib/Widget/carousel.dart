import 'package:flutter/material.dart';


class Carousel extends StatefulWidget{
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {

  final PageController  ctrl = PageController(viewportFraction: 0.8);

  // bym zapamietal co on robi 

  String activeTag = 'active';
  List<String> data = ['Plastik', 'Szkoło', '3', '4'];
  int courentPage = 0;
  @override
  initState(){
    ctrl.addListener((){
      int next = ctrl.page.round();
      if (courentPage != next){
        setState(() {
          courentPage = next;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
  return PageView.builder(
      controller: ctrl,
      itemCount: data.length,
      itemBuilder: (context, courentIndex){
        bool active = courentIndex == courentPage;
        return _pageCarousel(data[courentIndex], active);
      },
    );
  }

  _pageCarousel(data, bool active){
    //Animation proper
    final double blur = active ? 30 : 0;
    final double offset = active ? 20 : 0;
    final double top = active ? 150 : 200;
    final double bottom = active ? 150 : 200;

    return AnimatedContainer(

      duration: Duration(milliseconds: 200),
      curve: Curves.easeInSine,
      margin: EdgeInsets.only(top: top, bottom: bottom, right: 20,left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: blur, offset: Offset(offset, offset))]
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.redAccent
        ),
      ),
    );
  }
}