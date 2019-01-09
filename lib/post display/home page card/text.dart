import 'package:flutter/material.dart';

import '../../post types/text_post.dart';

// widgets
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/post_description.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';
import '../../widgets/post_elements/collection_tag.dart';

class TextPostHomePage extends StatelessWidget {
  final TextPost _post;

  TextPostHomePage(this._post);

  Widget _subTitle(String subtitle) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.blue[50], borderRadius: BorderRadius.circular(7.0)),
      child: Text(
        subtitle,
        style: TextStyle(
            fontFamily: 'Comfortaa',
            fontSize: 12.0,
            color: Colors.blue[900],
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _titleAndCollection() {
    // group title and collection tag for display
    if (_post.collection == null) {
      return PostTitle(_post.title);
    } else {
      return Container(
          child: Column(
        children: <Widget>[
          PostTitle(_post.title),
          CollectionTag(_post.collection.title, _post.collection.colour,
              small: true),
        ],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            ProfilePicCircle(_post.userDetails.userProfilePicture),
            _titleAndCollection(),
          ],
        ),
        _subTitle(_post.subTitle),
        Container(
            // text description
            child: PostDescription(_post.description)),
      ],
    ));
  }
}
