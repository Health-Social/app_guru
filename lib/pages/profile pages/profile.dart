import 'package:flutter/material.dart';

import './full_bio.dart';

// Users
import '../../users/user_details.dart';
import '../../widgets/post_elements/username_badge.dart';

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
  bool _following = false;

  Widget _fullBioButton() {
    // Full Bio Button
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => FullBioPage()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 28),
        child: Text('BIO',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'myriad-pro-light',
                fontWeight: FontWeight.w900,
                color: Colors.white)),
        decoration: BoxDecoration(
            gradient: RadialGradient(
                radius: 0.9,
                colors: <Color>[Colors.teal[800], Colors.tealAccent[400]]),
            border: Border.all(color: Colors.teal[800], width: 1),
            borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }

  Widget _followButton() {
    // Follow and Unfollow button
    Container _container;
    if (_following) {
      _container = Container(
        padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 10),
        child: Center(
          child: Text('following',
              style: TextStyle(
                  fontFamily: 'myriad-pro-light',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white)),
        ),
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: <Color>[Colors.pink, Colors.lightBlue]),
            //  color: Colors.red[900],
            border: Border.all(color: Colors.red[900], width: 1),
            borderRadius: BorderRadius.circular(15.0)),
      );
    } else {
      _container = Container(
        padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 20),
        child: Center(
          child: Text('follow',
              style: TextStyle(
                  fontFamily: 'myriad-pro-light',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.red[900])),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.red[900], width: 1),
            borderRadius: BorderRadius.circular(15.0)),
      );
    }

    return InkWell(
      // return and trigger
      onTap: () {
        setState(() {
          if (_following) {
            _following = false;
            //  implement unfollow
          } else {
            _following = true;
            // implement follow
          }
        });
      },
      child: _container,
    );
  }

  Widget _profilePicSquare(String profilePicture) {
    // Profile Picture Square

    return GestureDetector(
      onTap: () {
        // go to view/change profile picture
      },
      child: Stack(children: <Widget>[
       Center(child: Container(
        margin: EdgeInsets.all(10),
        height: 320.0,
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3),
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(profilePicture))),
      )),
      Positioned(
        bottom: 15,
        right: 20,
        child: UsernameBadge(widget._user.userName),
      ),
      Positioned(
        bottom: 15,
        left: 20,
        child: UsernameBadge(widget._user.userId),
      )
      ],));
  }

  Widget _userStats() {
    // the numbers & text of followers/following/posts
    return Row(
      children: <Widget>[
        Expanded(child: Container()),
        Column(children: <Widget>[
          Text('74'),
          Container(
              width: 55,
              child: Center(
                child: Text('posts',
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
              )),
        ]),
        SizedBox(width: 45.0),
        Column(children: <Widget>[
          Text('15.6K'),
          Container(
              width: 55,
              child: Center(
                child: Text('followers',
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
              )),
        ]),
        SizedBox(width: 45.0),
        Column(children: <Widget>[
          Text('963'),
          Container(
              width: 55,
              child: Center(
                child: Text('following',
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
              )),
        ]),
        Expanded(child: Container()),
      ],
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
              : BoxDecoration(
                  color: Color(0xFFECEFF1),
                  borderRadius: BorderRadius.circular(10),
                ),
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
              : BoxDecoration(
                  color: Color(0xFFECEFF1),
                  borderRadius: BorderRadius.circular(10),
                ),
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
              : BoxDecoration(
                  color: Color(0xFFECEFF1),
                  borderRadius: BorderRadius.circular(10),
                ),
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
              : BoxDecoration(
                  color: Color(0xFFECEFF1),
                  borderRadius: BorderRadius.circular(10),
                ),
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
              : BoxDecoration(
                  color: Color(0xFFECEFF1),
                  borderRadius: BorderRadius.circular(10),
                ),
          child: Icon(
            Icons.all_inclusive,
            size: 30,
            color: _currentIndex == 4 ? Colors.white : null,
          ),
        ),
      )),
    ]);
  }

  Widget _subTitle(String _subtitle, int _navigator) {
    // subtitle of each category (meals, beverages, text)
    return GestureDetector(
      onTap: () {
        // navigate to that section onl
        // _navigator
      },
      child: Row(
      children: <Widget>[
        Expanded(child: Container()),
        Text(_subtitle,
            style: TextStyle(
                fontFamily: 'myraid-pro-light',
                fontWeight: FontWeight.w300,
                fontSize: 30,
                color: Colors.black87)),
        SizedBox(width: 15),
      ],
    ),);
  }

  Widget _catelogContainer() {
    // the shell of the scrollable catelog
    return Container(
      height: 150,
      color: Colors.white,
      // implement list view builder (horizonal)
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      _profilePicSquare(widget._user.userProfilePicture),
      // Row(
      //   children: <Widget>[
      //     Container(
      //         // profile picture
      //         child: _profilePicSquare(widget._user.userProfilePicture)),
      //     Column(
      //       children: <Widget>[
      //         Row(
      //           children: <Widget>[
      //             SizedBox(width: 20),
      //             _userName(widget._user.userName),
      //           ],
      //         ),
      //         SizedBox(height: 10),
      //         Text('@ZachWolpe'),
      //       ],
      //     ),
      //   ],
      // ),
      SizedBox(height: 10),
      _userStats(),
      SizedBox(height: 15),
      Row(children: [
        Expanded(child: Container()),
        _followButton(),
        SizedBox(width: 15),
        _fullBioButton(),
        Expanded(child: Container()),
      ]),
      SizedBox(height: 15),
      _subTitle('Meals', 1),
      SizedBox(height: 8),
      _catelogContainer(),
      SizedBox(height: 15),
      _subTitle('Beverages', 2),
      SizedBox(height: 8),
      _catelogContainer(),
      SizedBox(height: 15),
      _subTitle('Workouts', 3),
      SizedBox(height: 8),
      _catelogContainer(),
      _subTitle('Text', 4),
      SizedBox(height: 8),
      _catelogContainer(),
      SizedBox(height: 55),
    ]);
  }
}
