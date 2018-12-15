// import packages
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../../post types/image_post.dart';
import '../full post card/image.dart';
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';
import '../../widgets/post_elements/post_description.dart';

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
                  builder: (BuildContext context) => ImagePostFull(_imagePost)));
        },
        onDoubleTap: () {
          // like post code
        },
        child: Container(
            child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                AspectRatio(
                  // Image
                  aspectRatio: 487 / 451,
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      alignment: FractionalOffset.center,
                      image: AssetImage(_imagePost.imageUrl),
                    )),
                  ),
                ),
                Container(
                    // Profile Picture
                    alignment: Alignment.topLeft,
                    child: ProfilePicCircle(_imagePost.userProfilePicture)),
                Container(
                    // title
                    margin: EdgeInsets.only(top: 15.0, right: 15.0),
                    alignment: Alignment.topRight,
                    child: PostTitle(_imagePost.title)),
              ],
            ),
            Container(
                // text description
                height: 1.0,
                alignment: FractionalOffset.topCenter,
                child: PostDescription(_imagePost.description)),
          ],
        )));
  }
}
