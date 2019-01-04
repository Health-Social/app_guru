import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  final String _text;

  MyAppBar(this._text);

  Widget build(BuildContext context) {
    return AppBar(
          backgroundColor: Colors.white70,
          title: Text(_text,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Comfortaa',
                  fontSize: 20.0)));
  }
}

