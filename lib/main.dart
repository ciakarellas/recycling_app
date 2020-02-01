import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:recycling_app/Provider/recycling_provider.dart';
import 'package:recycling_app/Widget/bottomNavBar.dart';

import './View/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext build){

    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    return ChangeNotifierProvider(
      create: (_) => new RecyclingProvider(),
      child: MaterialApp(
        home: Scaffold(
          bottomNavigationBar: BottomNavBar(),
          body: HomePage(),
        ),
      ),
    );
  }
}
