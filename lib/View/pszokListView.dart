import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:recycling_app/Provider/pszokDataProvider.dart';
import 'package:recycling_app/Widget/pszok_details.dart';

class PszokListView extends StatelessWidget {
  const PszokListView({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var pszokData = Provider.of<PszokDataProvider>(context);
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
          ),
        ),
          SliverGrid.count(
            childAspectRatio: (10/4),
            crossAxisCount: 2,
            children: pszokData.state.map<Widget>((state){
              return GestureDetector(
                onTap: (){},
                child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.all(5),
                height: 20,
                child: Center(child: Text(state, textAlign: TextAlign.center,))
              ),
          );
        }).toList(),
      ),]
          )
    );
    /*return SafeArea(

      bottom: true,
      top: true,
      child: GridView.count(

        childAspectRatio: (10/4),
        crossAxisCount: 2,
        primary: true,
        padding: const EdgeInsets.all(10),
        children: pszokData.state.map<Widget>((state){
          return GestureDetector(
            onTap: (){},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.all(5),
              height: 20,
              child: Center(child: Text(state, textAlign: TextAlign.center,))
              ),
          );
        }).toList(),
      ),
    );
  }*/
}
}