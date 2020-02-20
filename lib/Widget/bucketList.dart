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
            padding: EdgeInsets.only(top:60),
            itemCount: trashProvider.trashList.length,
            itemBuilder: (BuildContext context, item){
              return Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[100] ,width: 1.9),
                  borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.fromLTRB(15,25,15,25),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left:20),
                      height: 70,
                      child: Image(
                        image: AssetImage('assets/plastic-bottle.png'), 
                        fit: BoxFit.contain,
                      )
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Text(trashProvider.trashList[item].name, 
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18
                              ),
                            ),
                          ),
                          Text(
                            trashProvider.trashList[item].category, 
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                         ),
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
            padding: EdgeInsets.only(top:60),
          itemCount: trashProvider.searchingList.length,
          itemBuilder: (BuildContext context, item){
              return Padding(
                padding: EdgeInsets.fromLTRB(25, 15, 25, 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 70,
                      child: Image(
                        image: AssetImage('assets/plastic-bottle.png'), 
                        fit: BoxFit.contain,
                      )
                    ),
                    Container(
                      padding: EdgeInsets.only(left:25),
                      width: 200,
                      child: Text(
                        trashProvider.searchingList[item].name, 
                        textAlign: TextAlign.start,
                        )
                      ),
                      Text(
                      trashProvider.searchingList[item].category, 
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                      ),
                    ],
                ),
              );
          }
            );
          }
        }
  } 
