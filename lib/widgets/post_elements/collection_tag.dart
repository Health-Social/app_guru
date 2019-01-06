import 'package:flutter/material.dart';

class CollectionTag extends StatelessWidget {
  final String _title;
  final Color _colour;

  CollectionTag(this._title, this._colour);

  Container _style() {
    // look and feel of the button
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: _colour, width: 1),
          borderRadius: BorderRadius.circular(7.0)),
      child: Text(
        _title,
        style: TextStyle(
            fontFamily: 'myriad-pro-light',
            fontSize: 20.0,
            color: _colour,
            fontWeight: FontWeight.w600),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        }, 
      child: _style());
  }
}
