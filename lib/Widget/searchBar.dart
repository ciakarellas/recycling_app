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
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey,
      ),
      child: Padding(
        padding: EdgeInsets.all(0),
        child: TextField(
          controller: _searchQueryController,
          onChanged: (s){
            _trashprovider.searching(s);
          },
          decoration: InputDecoration(
            icon: Icon(Icons.search),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}