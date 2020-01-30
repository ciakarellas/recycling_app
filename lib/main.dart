import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recycling_app/Provider/recycling_provider.dart';

import './View/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext build){
    return ChangeNotifierProvider(
      create: (_) => new RecyclingProvider(),
      child: MaterialApp(
        home: Scaffold(
          bottomNavigationBar: Container(
            width: 90,
            margin: EdgeInsets.fromLTRB(2, 0, 2, 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(90),
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 2, offset: Offset(0, 2))]
            ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){},
                      child: Icon(Icons.ac_unit),
                    ),
                    FlatButton(
                      onPressed: (){},
                      child: Icon(Icons.restore),
                    ),
                    FlatButton(
                      onPressed: (){},
                      child: Icon(Icons.business),
                    ),
                    FlatButton(
                      onPressed: (){},
                      child: Icon(Icons.accessibility_new),
                    )
                ],
                ),
              ),
          ),
          body: HomePage(),
        ),
      ),
    );
  }
}
