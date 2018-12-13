// import packages
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../../post types/image_post.dart';
import '../../widgets/post_elements/post_title.dart';
import '../full post card/image.dart';

class ImagePostDisplay extends StatelessWidget {
  final ImagePost _imagePost;

  ImagePostDisplay(this._imagePost);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ImagePostFull(_imagePost)));
        },
        onDoubleTap: () {
          // like post code
        },
        child: Container(
            child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                    alignment: Alignment.topRight,
                    child: PostTitle(_imagePost.title)),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: 300,
                  child: Image.asset(_imagePost.imageUrl),
                ),
              ],
            ),
          ],
        )));
  }
}
