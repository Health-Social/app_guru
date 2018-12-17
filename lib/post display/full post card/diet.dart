import 'package:flutter/material.dart';

// Import Post Type
import '../../post types/diet_post.dart';

// Import Widgets
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';
import '../../widgets/post_elements/diet_post_badge.dart';
import '../../widgets/post_elements/subtitles.dart';

class DietPostFull extends StatelessWidget {
  final DietPost _post;

  DietPostFull(this._post);

  List<Widget> _infoList(List<String> list) {
    // convert a list into
    List<Widget> widgets = list.map((name) => Text(name)).toList();
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(child: Image.asset(_post.imageUrl)),
              Container(
                child: ProfilePicCircle(_post.userDetails.userProfilePicture),
              ),
              Positioned(
                bottom: 5,
                right: 15,
                child: RecipeBadge(),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              SizedBox(width: 10.0),
              PostTitle(_post.title),
              Expanded(child: Container()),
              // _post.isFavourite == true ?
              //  ? Icon(Icons.favorite, color: Colors.black)
              //  : Container(),
              Icon(Icons.favorite, color: Colors.black, size: 35.0),
              SizedBox(width: 3.0),
              Icon(Icons.comment, color: Colors.black, size: 25.0),
              SizedBox(width: 3.0),
              Icon(Icons.room, color: Colors.black, size: 25.0),
              SizedBox(width: 10.0)
            ],
          ),
          SizedBox(height: 10.0),
          Divider(indent: 10.0, color: Colors.grey),
          Row(
            children: <Widget>[
              Expanded(child: SizedBox()),
              RecipeBadgeCakeSmall(),
              SizedBox(width: 10),
              DietSubTitle('Benefits'),
              SizedBox(width: 20),
            ],
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 25, top: 5),
            child: Column(
              children: _infoList(_post.benefits),
            ),
          ),
          Divider(),
          Row(
            children: <Widget>[
              SizedBox(width: 20),
              DietSubTitle('Ingredients'),
              SizedBox(width: 10),
              RecipeBadgeFastfoodSmall(),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 25.0, top: 5),
            child: Column(
              children: _infoList(_post.ingredients),
            ),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Expanded(child: SizedBox()),
              RecipeBadgeLocalDiningSmall(),
              SizedBox(width: 10),
              DietSubTitle('Recipe'),
              SizedBox(width: 20),
            ],
          ),
          Container(padding: EdgeInsets.all(10.0), child: Text(_post.recipe))
        ],
      ),
    );
  }
}
