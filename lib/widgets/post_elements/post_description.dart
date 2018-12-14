import 'package:flutter/material.dart';

class PostDescription extends StatelessWidget {
  final String description;

  PostDescription(this.description);

  String _longDescription() {
    if (description.length > 120) {
      return description.substring(0, 120) + ' ... (more)';
    } else {
      return description;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Text(_longDescription()),
    );
  }
}