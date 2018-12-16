import 'package:flutter/material.dart';

class PostTitle extends StatelessWidget {
  final String _title;

  PostTitle(this._title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white54,
        border: Border.all(color: Colors.black, width: 0.8),
        borderRadius: BorderRadius.circular(7.0)
      ),
      child: Text(
        _title,
        style: TextStyle(fontFamily: 'Comfortaa', fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
