import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:recycling_app/Provider/trash_provider.dart';

class BucketList extends StatelessWidget {
  const BucketList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var trashProvider = Provider.of<TrashProvider>(context);
        if(trashProvider.searchingList == null){
          return ListView.builder(
          itemCount: trashProvider.trashList.length,
          itemBuilder: (BuildContext context, item){
              return Container(
              padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 70,
                    child: Image(
                      image: AssetImage('assets/plastic-bottle.png'), 
                      fit: BoxFit.contain,
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(trashProvider.trashList[item].category, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text(trashProvider.trashList[item].name,)
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
        } else {
          return ListView.builder(
          itemCount: trashProvider.searchingList.length,
          itemBuilder: (BuildContext context, item){
              return Container(
              padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 70,
                    child: Image(
                      image: AssetImage('assets/plastic-bottle.png'), 
                      fit: BoxFit.contain,
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(trashProvider.searchingList[item].category, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text(trashProvider.searchingList[item].name,)
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
        }
  } 
}