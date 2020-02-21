import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:recycling_app/Model/trash.dart';

class TrashProvider extends ChangeNotifier{
  List<Trash> _trashList = [
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Jabło', 'Odpady biodegradowalne', ''),
    Trash('Opakowanie po mleku', 'Metale i tworzywa sztuczne', ''),
    Trash('Skoróbki po jajkach', 'Odpady biodegradowalne', ''),
    Trash('Papier po mięsie', 'Metale i tworzywa sztuczne', ''),
    Trash('Opony', 'PSZOK', ''),
    Trash('Baterie', 'PSZOK', ''),
    Trash('Karton', 'Papier', ''),
    Trash('Butelka', 'Szkło', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Butelka', 'Szkło', ''),
    Trash('Butelka', 'Szkło', ''),
    Trash('Butelka', 'Szkło', ''),
    Trash('Butelka', 'Szkło', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    Trash('Puszka', 'Metale i tworzywa sztuczne', ''),
    
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