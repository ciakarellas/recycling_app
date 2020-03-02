import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class RecyclingProvider extends ChangeNotifier {

  
  int _courentPage = 0;
  get courentPage => _courentPage;
  get data => _data;
  
  void setCourentPage(page){
    _courentPage = page;
    notifyListeners();
  }

  List<Map> _data = [
    {
      'name': 'Plastik',
      'img': 'assets/plastik_metal.png',
      "yes": ["tłusty plastik", 'zabawki plasikowe', 'plastik z zawartością'],
      "no": ['puste butelki plastikowe', 'nakrędki', 'puszka'],
      "description": ''
    },
    {
      'name': 'Szkło',
      'img': 'assets/szklo.png',
    },
    {
      'name': 'Papier',
      'img': 'assets/papier.png',
    },
    {
      'name': 'Bio',
      'img': 'assets/bio.png',
    },
    {
      'name': 'Odpady zmieszane',
      'img': 'assets/zmieszane.png',
    },
{
      'name': 'PSZOK',
      'img': 'assets/bio.png',
    }
  ];
  
}