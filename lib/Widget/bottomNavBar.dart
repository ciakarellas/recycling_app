import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: 90,
            margin: EdgeInsets.fromLTRB(2, 0, 2, 5),
            decoration: BoxDecoration(
              color: Colors.transparent,
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