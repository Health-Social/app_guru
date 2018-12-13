import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../post types/image_post.dart';

// import post displays
import '../post display/home page card/image.dart';

class HomePage extends StatefulWidget {
  final List posts;

  HomePage(this.posts);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder( 
      itemBuilder: (BuildContext context, int index) {
        if (widget.posts[index] is ImagePost) {
          return ImagePostDisplay(widget.posts[index]);
        }
        return null;
      },
    );
    }
  }
