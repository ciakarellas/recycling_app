import 'package:flutter/material.dart';

class PageCarousel extends StatelessWidget{

  final bool active;
  final dataItem;
  
  PageCarousel(this.active, this.dataItem);

  @override
  Widget build(BuildContext context) {
    final double top = active ? 80 : 150;
    final double bottom = active ? 80 : 150;
    final double blur = active ? 30 : 0;
    final double offset = active ? 20 : 0;
    final double topPading = active ? 20 : 0;
    final double imageHeight = active ? 300 : 180;
    
    // TODO: implement build

    
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOutExpo,
      margin: EdgeInsets.only(top: top, bottom: bottom, right: 20,left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: blur, offset: Offset(offset, offset))]
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white70
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text(dataItem),),
            Padding(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Positioned(
                    top: 7,
                    left: .6,
                    child: Opacity(
                      opacity: .3,
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeOutExpo,
                          height: imageHeight,
                          child: Image( 
                            image: AssetImage('./assets/plastic-bottle.png',),
                            width: 150,
                            height: imageHeight,
                            color: Colors.black54,
                          ),
                        ),
                    ),
                  ),
                  
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOutExpo,
                    height: imageHeight,
                    child: Image( 
                      image: AssetImage('./assets/plastic-bottle.png',),
                      width: 150,
                      height: imageHeight,
                    ),
                  ),
                  
                ] 
              ),
              padding: EdgeInsets.all(8),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, topPading, 0, 5),
              child: MaterialButton(
                onPressed: (){},
                color: Colors.greenAccent,
                child: Text('Lista'),
                shape: StadiumBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}