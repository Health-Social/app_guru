import 'package:flutter/material.dart';

import '../../post types/text_post.dart';

// widgets
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/post_description.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';
import '../../widgets/post_elements/collection_tag.dart';
import '../../widgets/post_elements/interact.dart';
import '../../widgets/post_elements/anonymous.dart';

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
            _post.anonymous == false
              ? ProfilePicCircle(_post.userDetails.userProfilePicture)
              : SizedBox(height: 45), // AnonymousTag(),
            Expanded(child: Container()),
            PostTitle(_post.title),
             SizedBox(width: 5),
            _post.collection != null
              ? CollectionTag(_post.collection.title, _post.collection.colour, small: true)
              : Container(),
            SizedBox(width: 5),
          ],
        ),
        PostDescription(_post.description),
        SizedBox(height: 5),
        Interact(_post, 3),
      ],
    ));
  }
}
