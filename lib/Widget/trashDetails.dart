import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:recycling_app/Provider/recycling_provider.dart';

class TrashDetails extends StatelessWidget {
  const TrashDetails({Key key, this.trashCategory}) : super(key: key);
  final trashCategory;

  @override
  Widget build(BuildContext context) {
    final trasgDetailsProvider = Provider.of<RecyclingProvider>(context);
    var data = trasgDetailsProvider.data.firstWhere((trash) => trash['name'] == trashCategory);
    return Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            children: <Widget>[
              Column(
                children: [
                  Text(
                    '${data["name"]}', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:10),
                    child: Text('${data["description"]}'),  
                  ),
                  _noList(data['no'])
                ]
              )
            ],   
        )
      )
    );
  }
  Widget _noList(data){
      return Column(
        children: 
          data.map<Widget>((trash){
            return new Text('$trash');
          }).toList()
      
      );
    }
}

class Bullet extends StatelessWidget {
  const Bullet({Key key, this.size}) : super(key: key);
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: new BoxDecoration(
      color: Colors.black,
      shape: BoxShape.circle,
      )
    );
  }
}
