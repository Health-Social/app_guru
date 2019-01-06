import 'package:flutter/material.dart';

// Import Post Type
import '../../post types/diet_post.dart';

// Import Widgets
import '../../widgets/post_elements/username_badge.dart';
import '../../widgets/post_elements/diet_post_badge.dart';
import '../../widgets/post_elements/view_likes_comments.dart';
import '../../widgets/post_elements/collection_tag.dart';

class DietPostFull extends StatelessWidget {
  final DietPost _post;

  DietPostFull(this._post);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     backgroundColor: Colors.white70,
      //     title: Text(_post.title,
      //         style: TextStyle(
      //             color: Colors.black,
      //             fontFamily: 'Comfortaa',
      //             fontSize: 20.0))),
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
                ? CollectionTag(_post.collection['name'], _post.collection['colour'])
                : Container(),
              SizedBox(width: 10),
            ],
          ),
          SizedBox(height: 10.0),
          Divider(color: Colors.grey),
          RecipeSubBar(_post),
          Divider(color: Colors.grey),
          ViewLikesComments(_post),
          
        ],
      ),
    );
  }
}
