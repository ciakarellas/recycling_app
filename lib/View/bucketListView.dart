import 'package:flutter/material.dart';
import 'package:recycling_app/Widget/bucketList.dart';
import 'package:recycling_app/Widget/searchBar.dart';


class BucketListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return SafeArea(
        top: true,
        bottom: true,
        child: Container(
          child: 
              //SearchBar(),
              Stack(
                children: <Widget>[
                  
                  BucketList(),
                  SearchBar(),
                ],
              ),
            
          ),
      );
  }

  
}