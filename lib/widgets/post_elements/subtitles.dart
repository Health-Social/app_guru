import 'package:flutter/material.dart';

class DietSubTitle extends StatelessWidget {
  final String _title;

  DietSubTitle(this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.teal[50],
        border: Border.all(color: Colors.teal[300], width: 0.8),
        borderRadius: BorderRadius.circular(7.0)
      ),
      child: Text(
        _title,
        style: TextStyle(fontFamily: 'Comfortaa', fontSize: 16.0, color: Colors.teal[300], fontWeight: FontWeight.bold),
      ),
    );
  }
}

