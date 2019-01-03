import 'package:flutter/material.dart';

// Import Post Type
import '../../post types/diet_post.dart';

// Import Widgets
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/username_badge.dart';
import '../../widgets/post_elements/diet_post_badge.dart';

class DietPostFull extends StatelessWidget {
  final DietPost _post;

  DietPostFull(this._post);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
             Container(child: Image.asset(_post.imageUrl)),
              Container(
                child: UsernameBadge(_post.userDetails.userName),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Expanded(child: Container()),
              CaloriesTimeBar(
                _post.calories,
                _post.minutes,
                true,
              ),
              Expanded(child: Container()),
              // _post.isFavourite == true ?
              //  ? Icon(Icons.favorite, color: Colors.black)
              //  : Container(),
              Icon(Icons.favorite_border, color: Colors.black, size: 30.0),
              SizedBox(width: 3.0),
              Icon(Icons.comment, color: Colors.black, size: 25.0),
              SizedBox(width: 10.0)
            ],
          ),
          SizedBox(height: 10.0),
          Divider(indent: 5.0, color: Colors.grey),
          RecipeSubBar(_post),
        ],
      ),
    );
  }
}
