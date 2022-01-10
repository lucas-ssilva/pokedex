import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:share/share.dart';
import 'package:transparent_image/transparent_image.dart';

String dropdownValue = 'Fogo';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pókedex'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    TextFormField(),
                    DropdownButtonFormField(
                      items: <String>[
                        'Fogo',
                        'Grama',
                        'Gelo',
                        'Dragão',
                        'Planta'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        (() {
                          dropdownValue = newValue!;
                        });
                      },
                    )
                  ],
                ),
              ),
              Text('Pokedex'),
              Image.asset('lib/assets/001.png')
            ],
          ),
        ),
      ),
    );
  }
}
