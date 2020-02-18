import 'package:flutter/material.dart';
import 'package:recycling_app/Widget/faqCardAnimation.dart';

class FaqCard extends StatefulWidget {
  @override
  _FaqCardState createState() => _FaqCardState();
}

class _FaqCardState extends State<FaqCard> with TickerProviderStateMixin {
  AnimationController _controller;
  bool active = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
          onTap: (){
            active = !active;
            if (active){
              _controller.forward().orCancel;
            } else {
              _controller.reverse().orCancel;
            }
          },
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
            child: FaqCardAnimation(
              controller: _controller,
            ),
          ),
        );
}
}