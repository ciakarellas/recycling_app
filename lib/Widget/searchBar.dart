import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycling_app/Provider/trash_provider.dart';

class SearchBar extends StatelessWidget {
  final _searchQueryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _trashprovider = Provider.of<TrashProvider>(context);
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(5, 15))],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
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
            hintText: "Gdzie powinienem wyrzucić ... ?",
          ),
        ),
      ),
    );
  }
}