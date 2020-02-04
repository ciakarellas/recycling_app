import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycling_app/Provider/trash_provider.dart';


class BucketList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var trashProvider = Provider.of<TrashProvider>(context);
    // TODO: implement build
    return SafeArea(
        top: true,
        bottom: true,
        child: ListView.builder(
          itemCount: trashProvider.trashList.length,
          itemBuilder: (BuildContext context, item){
            return Card(
              child: Text(trashProvider.trashList[item].name),
            );
          },

        ),
      );
  }

  
}