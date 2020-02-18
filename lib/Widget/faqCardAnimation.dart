import 'package:flutter/material.dart';

class FaqCardAnimation extends StatefulWidget {
  FaqCardAnimation({ Key key, this.controller, }) :

    height = Tween<double>(
      begin: 100.0,
      end: 200.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.0, .800,
          curve: Curves.slowMiddle,
        ),
      ),
    ),
    
    visible = Tween(
      begin: 0.0,
      end: 1.0).animate(
        CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.0, 0.900,
          curve: Curves.ease,
        ),
      ),
      ),
    super(key: key);

  final Animation<double> controller;
  final Animation<double> height;
  final Animation<double> visible;

  @override
  _FaqCardAnimationState createState() => _FaqCardAnimationState();
}

class _FaqCardAnimationState extends State<FaqCardAnimation> {
  setVibility(){
    if (widget.visible.value == 0.0){
      return false;
    } else if(widget.visible.value == 1.0) {
      return true;
    } else {
      return false;
    }
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Container(
      height: widget.height.value,
      decoration: BoxDecoration(
        color: Colors.lightBlue[600],
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.black12, blurRadius: 25, offset: Offset(0, 5))
        ]),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 18),
            child: Text(
              'Gdzie wyrzucać chusteczki higieniczne?', 
              style: TextStyle(
                fontSize: 22,
                color: Colors.white
              ),
              
            ),
          ),
          Visibility(
            visible: setVibility(),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 18, 15, 8),
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              style: TextStyle(
                color: Colors.white70,
                height: 1.5,
              ),),
            ),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: widget.controller,
      
    );
  }
}