import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycling_app/Widget/carousel_page.dart';
import '../Provider/recycling_provider.dart';


class Carousel extends StatefulWidget{
  
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {

  final PageController  ctrl = PageController(viewportFraction: 0.8);
  var recyclingProvider = RecyclingProvider();
  // bym zapamietal co on robi 

  @override
  initState(){
    ctrl.addListener((){
      int next = ctrl.page.round();
      var recyclingProvider = Provider.of<RecyclingProvider>(context, listen: false);
      if (recyclingProvider.courentPage != next){
        recyclingProvider.setCourentPage(next);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
  var recyclingProvider2 = Provider.of<RecyclingProvider>(context);
  
  return PageView.builder(
      controller: ctrl,
      itemCount: recyclingProvider2.data.length,
      itemBuilder: (context, courentIndex){
        bool active = courentIndex == recyclingProvider2.courentPage;
        return PageCarousel(active, recyclingProvider2.data[courentIndex]);
      },
    );
  }

  /*_pageCarousel(data, bool active){
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
  }*/
}