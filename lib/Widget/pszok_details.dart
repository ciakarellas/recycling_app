import 'package:flutter/material.dart';

class PszokDetails extends StatelessWidget {
  const PszokDetails({Key key, this.pszokDetails}) : super(key: key);
  final Map pszokDetails;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Text(pszokDetails['city']),
    );
  }
}