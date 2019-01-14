import 'package:flutter/material.dart';

import '../../post types/text_post.dart';

// widgets
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';
import '../../widgets/post_elements/collection_tag.dart';
import '../../widgets/post_elements/interact.dart';
import '../../widgets/post_elements/anonymous.dart';

class TextPostFull extends StatelessWidget {
  final TextPost _post;

  TextPostFull(this._post);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 20),
              Stack(
                children: <Widget>[
                  Container(
                    // Profile Picture
                    alignment: Alignment.topLeft,
                    child: _post.anonymous == false
                        ? ProfilePicCircle(_post.userDetails.userProfilePicture)
                        : SizedBox(height: 60),
                  ),
                  Container(
                      // title
                      margin: EdgeInsets.only(top: 15.0, right: 15.0),
                      alignment: Alignment.topRight,
                      child: PostTitle(_post.title)),
                ],
              ),
            ],
          ),
          Container(
              // text description
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(_post.description)),
          SizedBox(height: 10),
          Divider(color: Colors.blueGrey),
          Row(
            children: <Widget>[
              SizedBox(width: 25.0),
              _post.anonymous == false
                  ? Text(
                      _post.userDetails.userName,
                      style: TextStyle(
                          fontFamily: 'myriad-pro-light',
                          fontWeight: FontWeight.w900,
                          fontSize: 20),      )
                  : AnonymousTag(full: true),
              Expanded(child: Container()),
              Interact(_post, 1),
              SizedBox(width: 15.0),
              CollectionTag(_post.collection.title, _post.collection.colour),
              SizedBox(width: 25.0),
            ],
          ),
          Divider(color: Colors.blueGrey),
          Interact(_post, 3),
          Interact(_post, 2),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
