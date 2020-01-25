import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/recycling_provider.dart';

class PageCarousel extends StatelessWidget{

  final bool active;
  final dataItem;

  PageCarousel(this.active, this.dataItem);

  @override
  Widget build(BuildContext context) {

    final double blur = active ? 30 : 0;
    final double offset = active ? 20 : 0;
    final double top = active ? 150 : 200;
    final double bottom = active ? 150 : 200;
    // TODO: implement build
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