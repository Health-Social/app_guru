import 'package:flutter/material.dart';

// Import Post Types
import '../../post types/diet_post.dart';

// Import Widgets
import '../../widgets/post_elements/username_badge.dart';
import '../../widgets/post_elements/diet_post_badge.dart';
import '../../widgets/post_elements/image_fade.dart';
import '../../widgets/post_elements/collection_tag.dart';
import '../../widgets/post_elements/interact.dart';

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
              top: 2,
              left: 2,
              child: UsernameBadge(_post.userDetails.userName),
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: ImageFade(),
            ),
            Positioned(
              right: 2,
              top: 2,
              child: CollectionTag(
                        _post.collection.title, _post.collection.colour,
                        small: true),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(child: Container()),
            CaloriesTimeBar(_post.calories, _post.minutes, false),
            Expanded(child: Container()),
            Interact(_post, 1)
          ],
        ),
           Row(children: <Widget>[
             // outsouce the star function
            Expanded(child: Container(),),
          Icon(Icons.star, color: Colors.black87, size: 30.0),
          SizedBox(width: 5),
          Icon(Icons.star, color: Colors.black87, size: 30.0),
          SizedBox(width: 5),
          Icon(Icons.star, color: Colors.black87, size: 30.0),
          SizedBox(width: 5),
          Icon(Icons.star_half, color: Colors.black87, size: 30.0),
          SizedBox(width: 5),
          Icon(Icons.star_border, color: Colors.black87, size: 30.0),
           Expanded(child: Container(),),
           Column(children: <Widget>[
             Text('147 votes')
           ],),
           SizedBox(width: 20),
        ],),
      //  SizedBox(height: 10),
     //   Interact(_post, 2)
      ],
    );
  }
}
