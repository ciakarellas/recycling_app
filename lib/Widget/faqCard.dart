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
    
        return  Padding(
          padding: EdgeInsets.all(8),
          child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
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
                height = active ? 200 : 100;
            });
          }),
          AnimatedContainer(
            duration: Duration(milliseconds: 400),
            curve: Curves.easeInSine,
            child: Visibility(
              maintainAnimation: true,
              maintainState: true,
              visible: active,
                          child: Padding(
                padding: EdgeInsets.fromLTRB(8, 20, 8, 8),
                child: Column(
                  children: <Widget>[
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
                  ],
                ),
          ),
            ),
      ),
      
              ],
            ),
          ),
    );
  }
}