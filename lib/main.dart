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
          body: HomePage(),
        ),
      ),
    );
  }
}
