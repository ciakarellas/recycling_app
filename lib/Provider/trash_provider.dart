import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:recycling_app/Model/trash.dart';

class TrashProvider extends ChangeNotifier{
  List<Trash> _trashList = [
    Trash('Puszka', 'Plastik', ''),
    Trash('Jabło', 'Bio', ''),
    Trash('Opakowanie po mleku', 'Plastik', ''),
    Trash('Skoróbki po jajkach', 'Bio', ''),
    Trash('Papier po mięsie', 'Plastik', ''),
    Trash('Opony', 'PSZOK', ''),
    Trash('Baterie', 'PSZOK', ''),
    Trash('Karton', 'Papier', ''),
    Trash('Nakrędka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    Trash('Puszka', 'Plastik', ''),
    
    ];

    List<Trash>  get trashList => _trashList;

    List<Trash> _searchingList;
    List<Trash> get searchingList => _searchingList;

    String _search = '';
    get search => _search;

    void searching(frase){
      _searchingList = _trashList.where((trash) => trash.name.toLowerCase().contains(frase)).toList();
      notifyListeners();
    }



}