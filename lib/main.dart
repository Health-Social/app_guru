import 'package:flutter/material.dart';

// Import Pages
import './pages/home.dart';
import './pages/search.dart';
import './pages/upload.dart';
import './pages/notification.dart';
import './pages/profile pages/profile.dart';

// Import Post Types
import './post types/image_post.dart';
import './post types/text_post.dart';
import './post types/diet_post.dart';
import './post types/workout_post.dart';

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
ImagePost _imagePost = ImagePost(
    userId: 'dummy ID',
    userEmail: 'dummy@dummy.com',
    userName: 'Zach Wolpe',
    userProfilePicture: 'assets/images/profileDiCaprio.jpg',
    userPassword: 'dummy password',
    title: 'What a view!',
    tag: 'VIEWS',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    imagePath: 'dummy image path',
    imageUrl: 'assets/images/background2.jpg',
    hasViewed: false,
    isFavourite: false);

// Dummy Post
DietPost _dietPost = DietPost(
    userId: 'dummy ID',
    userEmail: 'dummy@dummy.com',
    userName: 'Zach Wolpe',
    userProfilePicture: 'assets/images/profile.png',
    userPassword: 'dummy password',
    title: 'Cherry Choc Cheese Cake',
    tag: 'VIEWS',
    bodyTag: 'weightloss',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    imagePath: 'dummy image path',
    imageUrl: 'assets/images/cake.jpg',
    hasViewed: false,
    isFavourite: false);

// Dummy Post
WorkoutPost _workoutPost = WorkoutPost(
    userId: 'dummy ID',
    userEmail: 'dummy@dummy.com',
    userName: 'Zach Wolpe',
    userProfilePicture: 'assets/images/profile.png',
    userPassword: 'dummy password',
    title: 'What a view!',
    tag: 'VIEWS',
    bodyTag: 'Arms',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    imagePath: 'dummy image path',
    imageUrl: 'assets/images/background2.jpg',
    hasViewed: false,
    isFavourite: false);

// Dummy Post
TextPost _textPost = TextPost(
    userId: 'dummy ID',
    userEmail: 'dummy@dummy.com',
    userName: 'Zach Wolpe',
    userProfilePicture: 'assets/images/profileDiCaprio.jpg',
    userPassword: 'dummy password',
    title: 'What a view!',
    subTitle: 'absolutely gorgeous',
    tag: 'VIEWS',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    hasViewed: false,
    isFavourite: false);

// Dummy User
UserDetails _dummyUser = UserDetails(
  userId: 'dummy ID',
  userEmail: 'dummy@dummy.com',
  userName: 'Zach Wolpe',
  userProfilePicture: 'assets/images/profileDiCaprio.jpg',
  userPassword: 'dummy password',
  userBio: '22 year old South African, staying healthy',
  userFullBio: _dummyUserFullBio,
);

// Dummy User FUll Bio
FullBio _dummyUserFullBio = FullBio (title: 'full bio in hrerre');

// Pass to Dummy Post Displays

List _posts = [_imagePost, _dietPost, _workoutPost, _textPost];
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'health social',
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('Health Social',
                style: TextStyle(fontFamily: 'Comfortaa', fontSize: 20.0))),
        body: _pageShown(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(
                    _currentIndex == 0
                        ? Icons.perm_media
                        : Icons.fitness_center,
                    color: Colors.pink)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(
                    _currentIndex == 1 ? Icons.search : Icons.fitness_center,
                    color: Colors.lightBlue)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(
                    _currentIndex == 2
                        ? Icons.camera_alt
                        : Icons.fitness_center,
                    color: Colors.orange)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(
                    _currentIndex == 3 ? Icons.favorite : Icons.fitness_center,
                    color: Colors.green)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(
                    _currentIndex == 4 ? Icons.person : Icons.fitness_center,
                    color: Colors.blueGrey))
          ],
          onTap: _onTapNavigationBar,
        ),
      ),
    );
  }
}
