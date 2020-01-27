import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class Category extends ChangeNotifier{
  List<String> _category = ["Plastik", "Papier", "Mieszane", "Bio"];
  int _pageActive = 0;

  get category => _category;
  get pageActive => _pageActive;

  void setPageActive(int page){
    _pageActive = page;
    notifyListeners();
  }
}