import 'package:flutter/material.dart';
import 'package:recycling_app/View/bucketListView.dart';
import 'package:recycling_app/Widget/carousel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: Container(
          width: 90,
          margin: EdgeInsets.fromLTRB(2, 0, 2, 5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(90),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 2, offset: Offset(0, 5))
              ]),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: TabBar(
                indicatorColor: Colors.transparent,
                labelColor: Colors.green,
                unselectedLabelColor: Colors.black87,
                tabs: [
                  Tab(
                    icon: Icon(Icons.ac_unit),
                  ),
                  Tab(
                    icon: Icon(Icons.save),
                  ),
                  Tab(
                    icon: Icon(Icons.account_box),
                  ),
                  Tab(
                    icon: Icon(Icons.radio),
                  ),
                ]),
          ),
        ),
        body: Container(
          //color: Colors.grey[200],
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(11, 171, 100, 1),
                  Color.fromRGBO(59, 183, 143, 1),
                  /*
                  Colors.blue[100],
                  Colors.blue[50],
                  Colors.blue[50],
                  Colors.white60*/
                ], 
                begin: Alignment.topCenter, 
                end: Alignment.bottomCenter
              )
            ),
          child: TabBarView(
            children: <Widget>[
              BucketListView(),
              Carousel(),
              Carousel(),
              Carousel(),
            ],
          ),
        ),
      ),
    );
  }
}
