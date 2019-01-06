import 'package:flutter/material.dart';

// Import Pages
import './pages/home.dart';
import './pages/search.dart';
import './pages/upload.dart';
import './pages/notification.dart';
import './pages/profile pages/profile.dart';

// Import Post Types
import './post types/text_post.dart';
import './post types/diet_post.dart';

// Users
import './users/user_details.dart';
import './users/full_bio.dart';

// Import Widgets

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

// ..................................... DELETE WHEN ADDING REAL DATA : DUMMY POSTS ....................................................
// .....................................................................................................................................
// .....................................................................................................................................
// .....................................................................................................................................



// Dummy Post
DietPost _dietPost = DietPost(
    userDetails: _dummyUser,
    calories: 434,
    minutes: 27,
    title: 'Summer Fruit Poke Bowl',
    benefits: ['loose weight', 'get stronger', 'live happily'],
    ingredients: [
      'salt',
      'pepper',
      'eggs',
      'flower',
      'water',
      'maybe quantities?'
    ],
    recipe: 'mix cake into a batch of dummy text that is used to test design',
    tag: 'VIEWS',
    bodyTag: 'weightloss',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    imagePath: 'dummy image path',
    imageUrl: 'assets/images/healthBowl.jpg',
    // hasViewed: false,
    isFavourite: ['zach', 'michelle', 'keagan'],
    comments: [{'id':'zach', 'comment':'looks tasty!'},{'id':'Tom','comment':'Master Chef!'},{'id':'Nelius', 'comment':'Bravo chef'}],
    collection: {'name': 'Kito Diet', 'colour': Colors.pink}
    );


// Dummy Post
TextPost _textPost = TextPost(
    userDetails: _dummyUser,
    title: 'Trip to Massachusetts', // limit characters
    subTitle: 'How I became a post doc fellow at MIT', // limit characters
    tag: 'VIEWS',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    hasViewed: false,
    isFavourite: false);

// Dummy User
UserDetails _dummyUser = UserDetails(
  userId: 'dummy ID',
  userEmail: 'dummy@dummy.com',
  userName: 'Zach Wolpe',
  userProfilePicture: 'assets/images/profile_pic2.jpg',
  userPassword: 'dummy password',
  userBio: '22 year old South African, staying healthy',
  userFullBio: _dummyUserFullBio,
);

// Dummy User FUll Bio
FullBio _dummyUserFullBio = FullBio(title: 'full bio in hrerre');

// Pass to Dummy Post Displays

List _posts = [_dietPost, _textPost];
// ..................................... DELETE WHEN ADDING REAL DATA : DUMMY POSTS ....................................................
// .....................................................................................................................................
// .....................................................................................................................................
// .....................................................................................................................................

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void _onTapNavigationBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _pageShown() {
    // which page to show
    if (_currentIndex == 0) {
      return HomePage(_posts);
    }
    if (_currentIndex == 1) {
      return SearchPage();
    }
    if (_currentIndex == 2) {
      return UploadPage();
    }
    if (_currentIndex == 3) {
      return NotificationPage();
    } else {
      return ProfilePage(_dummyUser);
    }
  }

  Widget _appBarOptional() {
    // when to not show appBar
    if (_currentIndex == 2 || _currentIndex == 4) {
      return null;
    } else {
      return AppBar(
          backgroundColor: Colors.white70,
          title: Text('Cheese Cake',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Comfortaa',
                  fontSize: 20.0)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cheese Cake',
      home: Scaffold(
        backgroundColor: Color(0xFFECEFF1),
        appBar: _appBarOptional(),
        body: _pageShown(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(Icons.perm_media,
                    color:
                        _currentIndex == 0 ? Colors.indigo[800] : Colors.grey)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(
                  Icons.search,
                  color: _currentIndex == 1 ? Colors.indigo[800] : Colors.grey,
                )),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(Icons.camera_alt,
                    color:
                        _currentIndex == 2 ? Colors.indigo[800] : Colors.grey)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(Icons.favorite,
                    color:
                        _currentIndex == 3 ? Colors.indigo[800] : Colors.grey)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(Icons.person,
                    color:
                        _currentIndex == 4 ? Colors.indigo[800] : Colors.grey))
          ],
          onTap: _onTapNavigationBar,
        ),
      ),
    );
  }
}
