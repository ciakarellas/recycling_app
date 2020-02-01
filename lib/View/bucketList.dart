import 'package:flutter/material.dart';
import 'package:recycling_app/Widget/bottomNavBar.dart';

class Bucket extends StatelessWidget {
  final String category;

  Bucket(this.category);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: FlatButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Icon(Icons.arrow_back),
              )
          ),
          Center(child: Text(category)),
        ],
      ),
    );
  }

  
}