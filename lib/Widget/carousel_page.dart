import 'package:flutter/material.dart';

class PageCarousel extends StatelessWidget{

  final bool active;
  final dataItem;
  
  


  PageCarousel(this.active, this.dataItem);

  @override
  Widget build(BuildContext context) {

    final double top = active ? 130 : 180;
    final double bottom = active ? 130 : 180;
    final double blur = active ? 30 : 0;
    final double offset = active ? 20 : 0;
    //final double topPading = active ? 40 : 0;
    final double imageHeight = active ? 200 : 150;
    
    
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
          color: Colors.white70
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text('Plastik'),),
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
                            duration: Duration(milliseconds: 200),
                            height: imageHeight,
                            child: Image( 
                              image: AssetImage('./assets/plastic-bottle.png',),
                              height: imageHeight,
                            ),
                          ),
                    ),
                  ),
                  AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: imageHeight,
                                            child: Image( 
                        image: AssetImage('./assets/plastic-bottle.png',),
                        height: imageHeight,
                      ),
                  ),
                  
                ] 
              ),
              padding: EdgeInsets.all(8),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
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