import 'package:flutter/material.dart';

import '../Models/trash.dart';
import '../Widget/trash_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: FutureBuilder<Trash>(
        future: fetchPost(),
        builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.message);
              } else if (snapshot.hasError) {
                return Text("braki");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
      ),
    );
  }
  
}