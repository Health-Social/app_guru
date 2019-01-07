import 'package:flutter/material.dart';

class CollectionTag extends StatelessWidget {
  final String _title;
  final Color _colour;
  final bool small;

  CollectionTag(this._title, this._colour, {this.small=false});

  Color _backColour() {
    // pick colour
    if (small == true) {
      return Colors.white70;
    } else {
      return Colors.white;
    }
  }

  double _size() {
    // pick size
    if (small == true) {
      return 15;
    } else {
      return 20;
    }
  }

  Color _showBorder() {
    // pick border
    if (small == true) {
      return Colors.transparent;
    } else {
      return _colour;
    }
  }
  

  Container _style() {
    // look and feel of the button
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
          color: _backColour(),
          border: Border.all(color: _showBorder(), width: 1),
          borderRadius: BorderRadius.circular(7.0)),
      child: Text(
        _title,
        style: TextStyle(
            fontFamily: 'myriad-pro-light',
            fontSize: _size(),
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
