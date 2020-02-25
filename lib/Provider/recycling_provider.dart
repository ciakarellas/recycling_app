import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class RecyclingProvider extends ChangeNotifier {

  get data => _data;
  

  List<Map> _data = [
    {
      'name': 'Plastik',
      'img': 'assets/plastik_metal.png',
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
      'name': 'Zmieszane',
      'img': 'assets/zmieszane.png',
    },
{
      'name': 'PSZOK',
      'img': 'assets/bio.png',
    }
  ];
  
}