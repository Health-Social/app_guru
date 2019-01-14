import 'package:flutter/material.dart';

import '../../post types/text_post.dart';

// widgets
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/post_description.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';
import '../../widgets/post_elements/collection_tag.dart';
import '../../widgets/post_elements/interact.dart';

class TextPostHomePage extends StatelessWidget {
  final TextPost _post;

  TextPostHomePage(this._post);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            ProfilePicCircle(_post.userDetails.userProfilePicture),
            Expanded(child: Container()),
            PostTitle(_post.title),
            Expanded(child: Container()),
            SizedBox(width: 10),
          ],
        ),
        Container(
            // text description
            child: PostDescription(_post.description)),
        SizedBox(height: 5),
        Interact(_post, 3),
      ],
    ));
  }
}
