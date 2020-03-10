import 'package:flutter/material.dart';

class PszokDetails extends StatelessWidget {
  const PszokDetails({Key key, this.pszokDetails}) : super(key: key);
  final Map pszokDetails;
  @override
  Widget build(BuildContext context) {
    
    return Container(
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
    );
  }
}