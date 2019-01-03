import 'package:flutter/material.dart';

class UsernameBadge extends StatelessWidget {
  final String _userName;

  UsernameBadge(this._userName);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // add go to Profile Functionality
      },
      child: Container(
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Text(
        _userName,
          style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.white)),
    ),);
  }
}

