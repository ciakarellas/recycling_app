import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycling_app/Provider/pszokDataProvider.dart';

class PszokList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pszokData = Provider.of<PszokDataProvider>(context);

    if (pszokData.searchingPSZOKList == null) {
      return ListView.builder(
        padding: EdgeInsets.only(top: 60),
        itemCount: pszokData.pszokListByState.length,
        itemBuilder: (BuildContext context, item) {
          return Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[100], width: 1.9),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.fromLTRB(5, 5, 5, 15),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        pszokData.pszokListByState[item]['state'],
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
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
                          child: Text(
                            pszokData.pszokListByState[item]['city'],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
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
        padding: EdgeInsets.only(top: 60),
        itemCount: pszokData.searchingPSZOKList.length,
        itemBuilder: (BuildContext context, item) {
          return Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[100], width: 1.9),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
            child: Container(
              child: Row(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 100,
                      child: Image(
                        image: AssetImage(
                            pszokData.searchingPSZOKList[item]['city']),
                        fit: BoxFit.contain,
                      )),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Text(
                              pszokData.searchingPSZOKList[item]['city'],
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Text(
                            pszokData.searchingPSZOKList[item]['city'],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
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
