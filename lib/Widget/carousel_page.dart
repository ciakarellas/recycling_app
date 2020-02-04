import 'package:flutter/material.dart';
import 'package:recycling_app/View/BucketList.dart';

class PageCarousel extends StatelessWidget{

  final bool active;
  final dataItem;
  
  


  PageCarousel(this.active, this.dataItem);

  @override
  Widget build(BuildContext context) {

    final double top = active ? 120 : 170;
    final double bottom = active ? 60 : 100;
    final double blur = active ? 30 : 0;
    final double offset = active ? 20 : 0;
    final double imageHeight = active ? 2.3 : 3.0;
    final double deviceSize = MediaQuery.of(context).size.width;
    
    
    // TODO: implement build

    
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInSine,
      margin: EdgeInsets.only(top: top, bottom: bottom, right: 15,left: 15),
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
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Text(dataItem['name']),),
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
                            height: deviceSize / imageHeight,
                            child: Image(
                              color: Colors.black54,
                              image: AssetImage(dataItem['img']),
                              height: deviceSize / imageHeight,
                            ),
                          ),
                    ),
                  ),
                  AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      height: deviceSize / imageHeight,
                        child: Image( 
                          image: AssetImage(dataItem['img']),
                          height: deviceSize / imageHeight,
                      ),
                  ),
                  
                ] 
              ),
              padding: EdgeInsets.all(8),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: MaterialButton(
                onPressed: (){
                 
                },
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