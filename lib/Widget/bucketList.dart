import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:recycling_app/Provider/trash_provider.dart';

class BucketList extends StatelessWidget {
  const BucketList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var trashProvider = Provider.of<TrashProvider>(context);
        return ListView.builder(
          itemCount: trashProvider.trashList.length,
          itemBuilder: (BuildContext context, item){
            return Container(
              padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 100,
                    child: Image(
                      image: AssetImage('assets/plastic-bottle.png'), 
                      fit: BoxFit.contain,
                    )
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(trashProvider.trashList[item].category, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                      Text('tesxteas slos alsf asdf ksdf ',)
                    ],
                  ),
                ],
              ),
            );
          },
        );
  }
}