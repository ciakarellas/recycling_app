import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final _searchQueryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: 1000,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Theme(
                        child: TextField(
                          controller: _searchQueryController,
                          decoration: InputDecoration(
                            icon: Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                        ),
                        data: Theme.of(context).copyWith(
                          primaryColor: Colors.yellowAccent,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}