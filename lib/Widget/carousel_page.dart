import 'package:flutter/material.dart';

class PageCarousel extends StatelessWidget{

  final bool active;
  final dataItem;
  
  


  PageCarousel(this.active, this.dataItem);

  @override
  Widget build(BuildContext context) {

    final plug = Padding(padding: EdgeInsets.all(0));
    final double top = active ? 150 : 200;
    final double bottom = active ? 150 : 200;
    final double blur = active ? 30 : 0;
    final double offset = active ? 20 : 0;
    final double topPading = active ? 40 : 0;
    final button = Padding(
              padding: EdgeInsets.fromLTRB(0, topPading, 0, 5),
              child: MaterialButton(
                onPressed: (){},
                color: Colors.greenAccent,
                child: Text('Lista'),
                shape: StadiumBorder(),
              ),
            );
    final Widget opacity = active ? button : plug;
    
    
    // TODO: implement build

    
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
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
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
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
                        child: Image(
                          color: Colors.black38,
                          image: AssetImage('./assets/plastic-bottle.png',),
                          width: 150.0,
                        ),
                    ),
                  ),
                  Image( 
                      image: AssetImage('./assets/plastic-bottle.png',),
                      width: 150.0,
                    ),
                ] 
              ),
              padding: EdgeInsets.all(8),
            ),
            opacity
          ],
        ),
      ),
    );
  }

  
}