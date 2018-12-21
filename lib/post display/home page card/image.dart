import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
              child: Image(image: AssetImage(_post.imageUrl), color: Colors.transparent),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                image: DecorationImage(
                  image: AssetImage(_post.imageUrl)
                ),
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
