import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:recycling_app/Model/trash.dart';

class TrashProvider extends ChangeNotifier{
  List<Trash> _trashList = [
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png', ),
    Trash('Jabło', 'Odpady biodegradowalne', '','assets/bio.png'),
    Trash('Opakowanie po mleku', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Skoróbki po jajkach', 'Odpady biodegradowalne', '', 'assets/bio.png'),
    Trash('Papier po mięsie', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Opony', 'PSZOK', '', 'assets/szklo.png'),
    Trash('Baterie', 'PSZOK', '', 'assets/szklo.png'),
    Trash('Karton', 'Papier', '', 'assets/papier.png'),
    Trash('Butelka', 'Szkło', '', 'assets/szklo.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Butelka', 'Szkło', '', 'assets/szklo.png'),
    Trash('Butelka', 'Szkło', '', 'assets/szklo.png'),
    Trash('Butelka', 'Szkło', '', 'assets/szklo.png'),
    Trash('Butelka', 'Szkło', '', 'assets/szklo.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    Trash('Puszka', 'Metale i tworzywa sztuczne', '', 'assets/plastik_metal.png'),
    
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