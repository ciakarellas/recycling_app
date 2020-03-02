import 'package:flutter/material.dart';

class TrashDetails extends StatelessWidget {
  const TrashDetails({Key key, this.trashCategory}) : super(key: key);
  final trashCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Text('Udało się $trashCategory')
        )
      )
    );
  }
}
