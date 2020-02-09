import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycling_app/Provider/trash_provider.dart';

class SearchBar extends StatelessWidget {
  final _searchQueryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _trashprovider = Provider.of<TrashProvider>(context);
    return Container(
      padding: EdgeInsets.all(0),
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(5, 15))],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
        color: Color.fromRGBO(11, 171, 100, 1),
      ),
      child: Padding(
        padding: EdgeInsets.all(0),
        child: TextField(
          controller: _searchQueryController,
          onChanged: (s){
            _trashprovider.searching(s);
          },
          decoration: InputDecoration(
            icon: Padding(
              padding:  EdgeInsets.only(left: 25),
              child: Icon(Icons.search),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}