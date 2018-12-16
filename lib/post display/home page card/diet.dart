import 'package:flutter/material.dart';

// Import Post Types
import '../../post types/diet_post.dart';

// Import Widgets
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';
import '../../widgets/post_elements/diet_post_badge.dart';

class DietPostHomePage extends StatelessWidget {
  final DietPost _post;

  DietPostHomePage(this._post);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
                // Image
                child: Image.asset(_post.imageUrl),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1.5))),
            Container(
                // Profile Picture
                alignment: Alignment.topLeft,
                child: ProfilePicCircle(_post.userDetails.userProfilePicture)),
            Container(
                // title
                margin: EdgeInsets.only(top: 15.0, right: 15.0),
                alignment: Alignment.topRight,
                child: PostTitle(_post.title)),
            Positioned(
                // Badge
                bottom: 5,
                right: 15,
                child: RecipeBadge()),
          ],
        ),
        SizedBox(height: 15),
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          RecipeBadgeCake(),
          SizedBox(width: 30),
          RecipeBadgeFastfood(),
          SizedBox(width: 30),
          RecipeBadgeLocalDining(),
        ],
        ),
        ),
        
      ],
    );
  }
}
