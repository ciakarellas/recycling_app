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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: MaterialButton(
            child: Icon(
              Icons.arrow_back, 
              color: Colors.black,
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
      ),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[ 
                    Text('No'),
                    _noList(data['no'])
                  ]
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Yes"),
                    _yesList(data['yes']),
                  ],
                )
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
          return Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _bullet(6.0),
              ),
              new Text('$trash'),
            ],
          );
        }).toList()
    );
  }

  Widget _yesList(data){
      return Column(
        children: 
          data.map<Widget>((trash){
            return Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _bullet(6.0),
                ),
                new Text('$trash'),
              ],
            );
          }).toList()
      
      );
    }

  Widget _bullet(size){
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