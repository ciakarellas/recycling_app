import 'package:flutter/material.dart';

class FaqCard extends StatefulWidget {
  const FaqCard({Key key}) : super(key: key);

  @override
  _FaqCardState createState() => _FaqCardState();
}

class _FaqCardState extends State<FaqCard> {

  double height = 100;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, item){
        return AnimatedContainer(
          duration: Duration(milliseconds: 200),
                  child: Container(
            height: height,
            color: Colors.grey,
            child: Column(
              children: <Widget>[
                Center(
                  child: Text('Centrum'),
                ),
                RaisedButton(
                  onPressed: (){
                    setState(() {
                      height=300;
                    });
                  },
                  
                )
              ],
            )
          ),
        );
      }
    );
  }
}