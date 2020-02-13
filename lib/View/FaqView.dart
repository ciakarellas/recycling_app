import 'package:flutter/material.dart';
import 'package:recycling_app/Widget/faqCard.dart';

class FaqView extends StatelessWidget {
  const FaqView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, item){
          return FaqCard();
        },
      ),
    );
  }
}