import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:recycling_app/Provider/pszokDataProvider.dart';
import 'package:recycling_app/Widget/pszok_details.dart';

class PszokListView extends StatelessWidget {
  const PszokListView({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var pszokData = Provider.of<PszokDataProvider>(context);
    pszokData.sortPszok();
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          floating: false,
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Lista PSZOK",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black26,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index){
              return PszokDetails(pszokDetails:pszokData.pszokData[index]);
          },
          childCount: pszokData.pszokData.length
        )
        ),
        SliverAppBar(
          backgroundColor: Colors.white,
          floating: false,
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Lista mobilnych PSZOK",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black26,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((BuildContext context, int index){
            return Text('');
          })
        ),
      ],
    );
  }
}