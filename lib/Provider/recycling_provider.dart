import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class RecyclingProvider extends ChangeNotifier {

  List<String> _data = ['Plastik', 'Szkoło', 'Papier', 'Inne'];
  int _courentPage = 0;

  get data => _data;
  get courentPage => _courentPage;

  void setCourentPage(page){
    _courentPage = page;
    notifyListeners();
  }
}