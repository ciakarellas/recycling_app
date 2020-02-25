import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycling_app/Provider/recycling_provider.dart';

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
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[100] ,width: 1.9),
                  borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.fromLTRB(5,5,5,15),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 70,
                          child: Image(
                            image: AssetImage(trashProvider.trashList[item].picUrl), 
                            fit: BoxFit.contain,
                          )
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                                trashProvider.trashList[item].category, 
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,

                             ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          children: <Widget>[
                            Center(
                              child: Text(trashProvider.trashList[item].name, 
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18
                                ),
                              ),
                            ),
                           /* Text(
                              trashProvider.trashList[item].category, 
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                           ),*/
                          ],
                        ),
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
              return Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[100] ,width: 1.9),
                  borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.fromLTRB(5,20,5,20),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left:10),
                        height: 100,
                        child: Image(
                          image: AssetImage(trashProvider.searchingList[item].picUrl), 
                          fit: BoxFit.contain,
                        )
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Column(
                            children: <Widget>[
                              Center(
                                child: Text(trashProvider.searchingList[item].name, 
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 18
                                  ),
                                ),
                              ),
                              Text(
                                trashProvider.searchingList[item].category, 
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                             ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            );
          },
        );
          }
        }
  } 
