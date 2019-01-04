import 'package:flutter/material.dart';

// Import Post Types
import '../../post types/diet_post.dart';

// Import Widgets
import '../../widgets/post_elements/username_badge.dart';
import '../../widgets/post_elements/diet_post_badge.dart';
import '../../widgets/post_elements/image_fade.dart';
import '../../widgets/post_elements/my_star_rating.dart';

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
            Positioned(
              top: 5,
              left: 2,
              child: UsernameBadge(_post.userDetails.userName),
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: ImageFade(),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: <Widget>[
            Expanded(child: Container()),
            CaloriesTimeBar(_post.calories, _post.minutes, false),
            Expanded(child: Container()),
            // _post.isFavourite == true ?
            //  ? Icon(Icons.favorite, color: Colors.black)
            //  : Container(),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.favorite_border,
                        color: Colors.black87, size: 30.0),
                    SizedBox(width: 3.0),
                    Icon(Icons.insert_comment,
                        color: Colors.black87, size: 25.0),
                    SizedBox(width: 10.0),
                  ],
                ),
                    Text('${_post.isFavourite.length} likes'),
                 //   Text('${_post.comments.length} '),
              ],
            )
          ],
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
