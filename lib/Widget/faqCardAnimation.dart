import 'package:flutter/material.dart';

class FaqCardAnimation extends StatelessWidget {
  FaqCardAnimation({ Key key, this.controller, }) :

    // Each animation defined here transforms its value during the subset
    // of the controller's duration defined by the animation's interval.
    // For example the opacity animation transforms its value during
    // the first 10% of the controller's duration.

    opacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.0, 0.100,
          curve: Curves.ease,
        ),
      ),
    ),
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

    // ... Other tween definitions ...

    super(key: key);

  final Animation<double> controller;
  final Animation<double> opacity;
  final Animation<double> height;

  // This function is called each time the controller "ticks" a new frame.
  // When it runs, all of the animation's values will have been
  // updated to reflect the controller's current value.
  Widget _buildAnimation(BuildContext context, Widget child) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Opacity(
        opacity: opacity.value,
        child: Container(
          width: 200,
          height: height.value,
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
              color: Colors.indigo[300],
              width: 3.0,
            ),
          ),
        ),
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