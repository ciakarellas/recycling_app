import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 90,
      margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(90),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 2, offset: Offset(0, 5))]
      ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                onPressed: (){},
                child: Icon(Icons.ac_unit),
              ),
              FlatButton(
                onPressed: (){},
                child: Icon(Icons.restore),
              ),
              FlatButton(
                onPressed: (){},
                child: Icon(Icons.business),
              ),
              FlatButton(
                onPressed: (){},
                child: Icon(Icons.accessibility_new),
              )
          ],
          ),
        ),
    );
  }
}