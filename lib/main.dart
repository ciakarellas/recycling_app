import 'package:flutter/material.dart';

import './View/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext build){
    return MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
