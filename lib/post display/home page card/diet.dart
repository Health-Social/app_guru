import 'package:flutter/material.dart';

// Import Post Types
import '../../post types/diet_post.dart';

// Import Widgets
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';
import '../../widgets/post_elements/diet_post_badge.dart';

class DietPostHomePage extends StatelessWidget {
  //
  final DietPost _post;

  DietPostHomePage(this._post);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              child: Image(
                  image: AssetImage(
                    _post.imageUrl,
                  ),
                  color: Colors.transparent),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(_post.imageUrl),
                  )),
            ),
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
        RecipeSubBar(_post),
      ],
    );
  }
}
