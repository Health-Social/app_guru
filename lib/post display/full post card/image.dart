import 'package:flutter/material.dart';
// not using: import 'package:zoomable_image/zoomable_image.dart';


import '../../post types/image_post.dart';
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';

class ImagePostFull extends StatelessWidget {
  final ImagePost _imagePost;

  ImagePostFull(this._imagePost);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_imagePost.title)),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(child: Image.asset(_imagePost.imageUrl)),
              Container(
                child: ProfilePicCircle(_imagePost.userProfilePicture),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              SizedBox(width: 10.0),
              PostTitle(_imagePost.title),
              Expanded(child: Container()),
              // _imagePost.isFavourite == true ?
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
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text(_imagePost.description))
        ],
      ),
    );
  }
}
