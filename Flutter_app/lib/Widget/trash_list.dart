import 'dart:convert';

import 'package:http/http.dart' as http;
import '../Models/trash.dart';

Future<Trash> fetchPost() async {
  final response = await http.get('http://127.0.0.1:5000/');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    return Trash.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}
