import 'package:flutter/material.dart';

import '../../post types/image_post.dart';

// widgets
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/post_description.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';

class ImagePostHomePage extends StatelessWidget {
  final ImagePost _post;

  ImagePostHomePage(this._post);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              // Image
              child: Image.asset(_post.imageUrl),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.5),
              ),
            ),
            Container(
                // Profile Picture
                alignment: Alignment.topLeft,
                child: ProfilePicCircle(_post.userProfilePicture)),
            Container(
                // title
                margin: EdgeInsets.only(top: 15.0, right: 15.0),
                alignment: Alignment.topRight,
                child: PostTitle(_post.title)),
          ],
        ),
        Container(
            // text description
            child: PostDescription(_post.description)),
      ],
    ));
  }
}
