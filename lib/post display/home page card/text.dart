import 'package:flutter/material.dart';

import '../../post types/text_post.dart';

// widgets
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/post_description.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';

class TextPostHomePage extends StatelessWidget {
  final TextPost _post;

  TextPostHomePage(this._post);

  Widget _subTitle(String subtitle){
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.indigo[50],
        border: Border.all(color: Colors.indigo[900], width: 0.4),
        borderRadius: BorderRadius.circular(7.0)
      ),
      child: Text(
        subtitle,
        style: TextStyle(fontFamily: 'Comfortaa', fontSize: 12.0, color: Colors.indigo[900], fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
                // Profile Picture
                alignment: Alignment.topLeft,
                child: ProfilePicCircle(_post.userDetails.userProfilePicture)),
            Container(
                // title
                margin: EdgeInsets.only(top: 15.0, right: 15.0),
                alignment: Alignment.topRight,
                child: PostTitle(_post.title)),
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
