import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycling_app/Provider/recycling_provider.dart';

class HowToView extends StatelessWidget {
  const HowToView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var recyclingProvider = Provider.of<RecyclingProvider>(context);
    return Container(
      child: Column(
        children: recyclingProvider.data.map((item){
          return Text('ko');
        }).toList(),
      ),
    );
  }
}