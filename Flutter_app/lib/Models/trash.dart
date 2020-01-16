import 'package:flutter/material.dart';


class Trash {

  String message;

  Trash({this.message});

  factory Trash.fromJson(Map<String, dynamic> json) {
    return Trash(
      message: json['message'],
    );
  }
}