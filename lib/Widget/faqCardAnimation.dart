import 'package:flutter/material.dart';

class FaqCardAnimation extends StatelessWidget {
  FaqCardAnimation({ Key key, this.controller, }) :

    height = Tween<double>(
      begin: 100.0,
      end: 200.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.0, 0.100,
          curve: Curves.ease,
        ),
      ),
    ),
    
    visible = Tween(
      begin: false,
      end: true).animate(
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
  final Animation visible;


  Widget _buildAnimation(BuildContext context, Widget child) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.white,
      height: height.value,
      child: Column(
        children: <Widget>[
          Text('Tu jest nowy text dla pytan i odpowiedzi'),
          Visibility(
            visible: visible.value,
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}