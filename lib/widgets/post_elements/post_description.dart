import 'package:flutter/material.dart';


class PostDescription extends StatefulWidget {
  final String description;

  PostDescription(this.description);

  @override
  State<StatefulWidget> createState() {
    return PostDescriptionState();
  }
}

class PostDescriptionState extends State<PostDescription> {
  bool _fullPost = false;

  String _longDescription() {
    if (widget.description.length > 70) {
      if (_fullPost == false) {
        return widget.description.substring(0, 70) + ' ... (more)';
      } else {
        return widget.description;
      }
    } else {
      return widget.description;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
           _fullPost ? _fullPost = false : _fullPost = true;
        });
      },
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Text(_longDescription()),
      ),
    );
  }
}
