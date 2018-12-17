import 'package:flutter/material.dart';

import '../../post types/text_post.dart';

// widgets
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';

class TextPostFull extends StatelessWidget {
  final TextPost _post;

  TextPostFull(this._post);

  Widget _subTitle(String subtitle) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.indigo[50],
          border: Border.all(color: Colors.indigo[900], width: 0.4),
          borderRadius: BorderRadius.circular(7.0)),
      child: Text(
        subtitle,
        style: TextStyle(
            fontFamily: 'Comfortaa',
            fontSize: 12.0,
            color: Colors.indigo[900],
            fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
        children: <Widget>[
          Column(children: <Widget>[
            SizedBox(height: 20),
          Stack(
            children: <Widget>[
              Container(
                  // Profile Picture
                  alignment: Alignment.topLeft,
                  child:
                      ProfilePicCircle(_post.userDetails.userProfilePicture)),
              Container(
                  // title
                  margin: EdgeInsets.only(top: 15.0, right: 15.0),
                  alignment: Alignment.topRight,
                  child: PostTitle(_post.title)),
            ],
          ),
          SizedBox(height: 5),
           _subTitle(_post.subTitle),
          ],),
          
          Container(
              // text description
              margin: EdgeInsets.all(15.0),
              child: Text(_post.description)),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
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
          Divider(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
