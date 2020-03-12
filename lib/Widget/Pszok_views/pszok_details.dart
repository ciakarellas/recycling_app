import 'package:flutter/material.dart';

import 'package:recycling_app/Widget/Pszok_views/pszokList.dart';
import '../searchBar.dart';

class PszokDetails extends StatelessWidget {
  const PszokDetails({Key key,}) : super(key: key);
  //final state;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        top:true,
        bottom: true,
        child: Stack(
          children: <Widget>[
            Center(child: PszokList()),
            SearchBar(hintText: "Kutno"),
            

          ],
        )
        
        
        /*Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(child: Text(pszokDetails['city'], style: TextStyle(fontSize: 20),)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(child: Text('Adres: ', textAlign: TextAlign.start,),),
                  Flexible(child: Text(pszokDetails['street']+ " " + pszokDetails['building'])),
                ],
              ),
              Text('Co można przywieźć'),
              Text(pszokDetails['preferred'])
            ],
          ),
        )*/,
      ),
    );
  }
}