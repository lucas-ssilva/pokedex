import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:pokedex/src/UI/homePage.dart';



void main () async {
  
  runApp(MaterialApp(
    home:  HomePage(),
    theme: ThemeData(hintColor: Colors.white),
  ));
}
