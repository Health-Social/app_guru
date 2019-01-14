import 'package:flutter/material.dart';

class AnonymousTag extends StatelessWidget {
  final bool full;

  AnonymousTag({this.full = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        full ? 'ANONYMOUS' : 'ANON',
        style: TextStyle(
          fontFamily: 'myriad-pro-lights',
          fontSize: 20,
        ),
      ),
    );
  }
}
