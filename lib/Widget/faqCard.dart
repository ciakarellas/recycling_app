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

  // ...Boilerplate...

  /*Future<void> _playAnimation() async {
    try {
      await _controller.forward().orCancel;
      //await _controller.reverse().orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because we were disposed
    }
  }
*/
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
          child: FaqCardAnimation(
            controller: _controller,
          ),
        );
}
}