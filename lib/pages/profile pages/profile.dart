import 'package:flutter/material.dart';

import './full_bio.dart';

// Users
import '../../users/user_details.dart';

// NOTES
// make it mandatory to have a SQUARE profile picture
// that will make it easier to no have gaps in the picture circle or square

class ProfilePage extends StatefulWidget {
  final UserDetails _user;

  ProfilePage(this._user);

  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget _fullBioButton() {
    // Full Bio Button
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => FullBioPage()));
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Text('FULL BIO',
            style: TextStyle(
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            border: Border.all(color: Colors.blue, width: 1.5),
            borderRadius: BorderRadius.circular(7.0)),
      ),
    );
  }

  Widget _profilePicSquare(String profilePicture) {
    // Profile Picture Square

    return GestureDetector(
      onTap: () {
        // go to view/change profile picture
      },
      child: Container(
        margin: EdgeInsets.all(15.0),
        height: 90.0,
        width: 90.0,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2.5),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(profilePicture))),
      ),
    );
  }


  Widget _userStats() {
    // the numbers & text of followers/following/posts
    return Expanded(
      child: Row(
        children: <Widget>[
          Column(children: <Widget>[
            Text('74'),
            Text('posts', style: TextStyle(color: Colors.grey, fontSize: 12))
          ]),
          SizedBox(width: 15.0),
          Column(children: <Widget>[
            Text('15.6K'),
            Text('followers',
                style: TextStyle(color: Colors.grey, fontSize: 12))
          ]),
          SizedBox(width: 15.0),
          Column(children: <Widget>[
            Text('963'),
            Text('following',
                style: TextStyle(color: Colors.grey, fontSize: 12))
          ])
        ],
      ),
    );
  }

  Widget _verifiedBadge() {
    // varified badge
    return Row(
      children: <Widget>[
        GestureDetector(
            onTap: () {
              // details page
            },
            child: Container(
              child: Icon(
                Icons.verified_user,
                size: 25,
                color: Colors.cyan,
              ),
            ))
      ],
    );
  }

    Widget _buttonFilterRow() {
    // row of buttons to filter for the types of posts
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Expanded(child: 
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.all_inclusive, size: 30),
          )),
          Divider(),
          Expanded(child: 
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.terrain, size: 30),
          )),
          Divider(),
          Expanded(child: 
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.hdr_strong, size: 30),
          )),
          Divider(),
          Expanded(child: 
          GestureDetector(
            onTap: () {},
            child: Icon(Icons.import_contacts, size: 30),
          )),
        ]),
        Divider(color: Colors.grey)
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Row(
        children: <Widget>[
          Column(children: <Widget>[
            Container(
                // profile picture
                child: _profilePicSquare(widget._user.userProfilePicture)),
            Row(
              children: <Widget>[
                SizedBox(width: 15),
                Text(widget._user.userName,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Comfortaa')),
                 SizedBox(width: 8),
                _verifiedBadge()
              ],
            ),
          ]),
          SizedBox(width: 45),
          _userStats(),
        ],
      ),
      SizedBox(height: 10),
      Row(
        children: <Widget>[
          SizedBox(width: 12),
          Container(child: Expanded(child: Text(widget._user.userBio))),
          Container(child: _fullBioButton())
        ],
      ), // storing some of the same info twice, better to pull info (like profile picture) to post than to store it in a post. That way it also dynamically updates
      Divider(color: Colors.grey),
      _buttonFilterRow(),
    ]);
  }
}
