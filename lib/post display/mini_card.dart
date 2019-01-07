import 'package:flutter/material.dart';

class Minicard extends StatelessWidget {
  final Color _colour;

  Minicard(this._colour);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 5),
        Card(
          elevation: 6,
          color: _colour,
          child: Container(
            height: 105,
            width: 90,
          ),
        )
      ],
    );
  }
}
