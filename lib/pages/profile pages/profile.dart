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

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  int _currentIndex; // consistantly index from 0

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
        child: Text('BIOGRAPHY',
            style: TextStyle(
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w900,
                color: Colors.white)),
        decoration: BoxDecoration(
            color: Colors.cyan[600],
            border: Border.all(color: Colors.cyanAccent[400], width: 2.5),
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

  Widget _userName(String name) {
    return Text(name,
        style: TextStyle(
            fontFamily: 'myriad-pro-light',
            fontWeight: FontWeight.w900,
            fontSize: 40));
  }


  Widget _buttonFilterRow() {
    // row of buttons to filter for the types of posts
    return Row(children: <Widget>[
      Expanded(
          // image filter
          // index = 0
          child: GestureDetector(
        onTap: () {
          setState(() {
            if (_currentIndex == 0) {
              _currentIndex = null;
            } else {
              _currentIndex = 0;
              // filter for image posts
            }
          });
        },
        child: Container(
          decoration: _currentIndex == 0
              ? BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                )
              : null,
          child: Icon(
            Icons.terrain,
            size: 30,
            color: _currentIndex == 0 ? Colors.white : null,
          ),
        ),
      )),
      Expanded(
          // text filter
          // index = 1
          child: GestureDetector(
        onTap: () {
          setState(() {
            if (_currentIndex == 1) {
              _currentIndex = null;
            } else {
              _currentIndex = 1;
              // filter for image posts
            }
          });
        },
        child: Container(
          decoration: _currentIndex == 1
              ? BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                )
              : null,
          child: Icon(
            Icons.text_format,
            size: 30,
            color: _currentIndex == 1 ? Colors.white : null,
          ),
        ),
      )),
      Expanded(
          // diet filter
          // index = 2
          child: GestureDetector(
        onTap: () {
          setState(() {
            if (_currentIndex == 2) {
              _currentIndex = null;
            } else {
              _currentIndex = 2;
              // filter for image posts
            }
          });
        },
        child: Container(
          decoration: _currentIndex == 2
              ? BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                )
              : null,
          child: Icon(
            Icons.local_dining,
            size: 30,
            color: _currentIndex == 2 ? Colors.white : null,
          ),
        ),
      )),
      Expanded(
          // workout filter
          // index = 3
          child: GestureDetector(
        onTap: () {
          setState(() {
            if (_currentIndex == 3) {
              _currentIndex = null;
            } else {
              _currentIndex = 3;
              // filter for image posts
            }
          });
        },
        child: Container(
          decoration: _currentIndex == 3
              ? BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                )
              : null,
          child: Icon(
            Icons.fitness_center,
            size: 30,
            color: _currentIndex == 3 ? Colors.white : null,
          ),
        ),
      )),
      Expanded(
          // 'run' filter
          // index = 4
          child: GestureDetector(
        onTap: () {
          setState(() {
            if (_currentIndex == 4) {
              _currentIndex = null;
            } else {
              _currentIndex = 4;
              // filter for image posts
            }
          });
        },
        child: Container(
          decoration: _currentIndex == 4
              ? BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                )
              : null,
          child: Icon(
            Icons.all_inclusive,
            size: 30,
            color: _currentIndex == 4 ? Colors.white : null,
          ),
        ),
      )),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
     Row(
        children: <Widget>[
          Column(children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    // profile picture
                    child: _profilePicSquare(widget._user.userProfilePicture)),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        _userName(widget._user.userName),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Text('@ZachWolpe'),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 15),
              ],
            ),
          ]),
          // SizedBox(width: 45),
          // _userStats(),
        ],
      ),
      SizedBox(height: 10),
      Row(
        children: <Widget>[
          SizedBox(width: 40),
          _userStats(),
          Container(child: _fullBioButton())
        ],
      ), // storing some of the same info twice, better to pull info (like profile picture) to post than to store it in a post. That way it also dynamically updates
      Divider(color: Colors.grey),
      _buttonFilterRow(),
      Divider(color: Colors.grey),
    ]);
  }
}
