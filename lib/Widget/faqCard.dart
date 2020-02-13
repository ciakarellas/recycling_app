import 'package:flutter/material.dart';

class FaqCard extends StatefulWidget {
  const FaqCard({Key key}) : super(key: key);

  @override
  _FaqCardState createState() => _FaqCardState();
}

class _FaqCardState extends State<FaqCard> {

  bool active = false;
  double height = 100;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInSine,
          height: height,
          color: Colors.white,
          width: 200,
          child:  Column(
              children: <Widget>[
      Text('testujemy co sie da'),
      RaisedButton(onPressed: (){
        setState(() {
            active = !active;
            height = active ? 100 : 200;
        });
      })
              ],
            ),
          ),
    );
  }
}