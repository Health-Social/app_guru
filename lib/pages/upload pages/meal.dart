import 'package:flutter/material.dart';

class MealUploadPage extends StatefulWidget {
  final Color _colour;

  MealUploadPage(this._colour);

  _MealUploadPageState createState() => _MealUploadPageState();
}

class _MealUploadPageState extends State<MealUploadPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
         
          gradient: LinearGradient(
            begin: FractionalOffset.bottomCenter,
            end: FractionalOffset.topCenter,
            colors: <Color>[
              Colors.cyan[800],
              widget._colour,
            ]
          ),
        ),
        child: ListView(
        children: <Widget>[
          Text('upload page')
        ],
      ),
    ),);
  }
}