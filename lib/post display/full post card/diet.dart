import 'package:flutter/material.dart';

// Import Post Type
import '../../post types/diet_post.dart';

// Import Widgets
import '../../widgets/post_elements/username_badge.dart';
import '../../widgets/post_elements/diet_post_badge.dart';
import '../../widgets/post_elements/view_likes_comments.dart';
import '../../widgets/post_elements/collection_tag.dart';
import '../../widgets/post_elements/interact.dart';

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
              _post.collection != null 
                ? Row(children: <Widget>[
                  Interact(_post, 1),
                  CollectionTag(_post.collection.title, _post.collection.colour),
                ],)
                : Row(children: <Widget>[
                  Interact(_post, 1),
                 SizedBox(width: 15),
                ],),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 10.0),
          Interact(_post, 3),
          Divider(color: Colors.grey),
          RecipeSubBar(_post),
          Divider(color: Colors.grey),
          SizedBox(height: 10.0),
          Interact(_post, 2)
        ],
      ),
    );
  }
}
