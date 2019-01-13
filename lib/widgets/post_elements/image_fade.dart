import 'package:flutter/material.dart';

class ImageFade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: <Color>[
          Colors.transparent,
          Colors.white10,
          Colors.white,
        ],
        begin: FractionalOffset(0.0, 0.0),
        end: FractionalOffset(0.0, 1.0),
      )),
    );
  }
}

class ImageFadeInverse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: <Color>[
          Colors.white,
          Colors.transparent,
        ],
        begin: FractionalOffset(0.0, 0.0),
        end: FractionalOffset(0.0, 1.0),
      )),
    );
  }
}
