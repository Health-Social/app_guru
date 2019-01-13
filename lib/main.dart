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
import './post types/collection.dart';

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

// Dummy Post 01
DietPost _dietPost = DietPost(
  meal: true,
  userDetails: _dummyUser,
  calories: 434,
  minutes: 27,
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
  bodyTag: 'weightloss',
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/healthBowl.jpg',
  // hasViewed: false,
  ratings: [{'userid': 'zach', 'rating' : 3}, {'userid': 'michelle', 'rating' : 4}, {'userid': 'keagan', 'rating' : 3.5}],
  comments: [
    {'id': 'zach', 'comment': 'looks tasty!'},
    {'id': 'Tom', 'comment': 'Master Chef!'},
    {'id': 'Nelius', 'comment': 'Bravo chef'}
  ],
  collection: _collection1,
);

// Dummy Post 02
DietPost _dietPost2 = DietPost(
  meal: true,
  userDetails: _dummyUser,
  calories: 130,
  minutes: 12,
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
  bodyTag: 'weightloss',
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/bowl1.jpg',
  // hasViewed: false,
  ratings: [{'userid': 'zach', 'rating' : 3}, {'userid': 'michelle', 'rating' : 4}, {'userid': 'keagan', 'rating' : 3.5}],
  comments: [
    {'id': 'zach', 'comment': 'looks tasty!'},
    {'id': 'Tom', 'comment': 'Master Chef!'},
    {'id': 'Nelius', 'comment': 'Bravo chef'}
  ],
  collection: _collection1,
);

// Dummy Post 03
DietPost _dietPost3 = DietPost(
  meal: true,
  userDetails: _dummyUser,
  calories: 189,
  minutes: 15,
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
  bodyTag: 'weightloss',
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/bowl2.jpg',
  // hasViewed: false,
  ratings: [{'userid': 'zach', 'rating' : 3}, {'userid': 'michelle', 'rating' : 4}, {'userid': 'keagan', 'rating' : 3.5}],
  comments: [
    {'id': 'zach', 'comment': 'looks tasty!'},
    {'id': 'Tom', 'comment': 'Master Chef!'},
    {'id': 'Nelius', 'comment': 'Bravo chef'}
  ],
  collection: _collection1,
);

// Dummy Post 04
DietPost _dietPost4 = DietPost(
  meal: true,
  userDetails: _dummyUser,
  calories: 560,
  minutes: 24,
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
  bodyTag: 'weightloss',
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/protein1.jpg',
  // hasViewed: false,
  ratings: [{'userid': 'zach', 'rating' : 3}, {'userid': 'michelle', 'rating' : 4}, {'userid': 'keagan', 'rating' : 3.5}],
  comments: [
    {'id': 'zach', 'comment': 'looks tasty!'},
    {'id': 'Tom', 'comment': 'Master Chef!'},
    {'id': 'Nelius', 'comment': 'Bravo chef'}
  ],
  collection: _collection2,
);

// Dummy Post 05
DietPost _dietPost5 = DietPost(
  meal: true,
  userDetails: _dummyUser,
  calories: 310,
  minutes: 40,
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
  bodyTag: 'weightloss',
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/protein2.jpg',
  // hasViewed: false,
  ratings: [{'userid': 'zach', 'rating' : 3}, {'userid': 'michelle', 'rating' : 4}, {'userid': 'keagan', 'rating' : 3.5}],
  comments: [
    {'id': 'zach', 'comment': 'looks tasty!'},
    {'id': 'Tom', 'comment': 'Master Chef!'},
    {'id': 'Nelius', 'comment': 'Bravo chef'}
  ],
  collection: _collection2,
);

// Dummy Post 06
DietPost _dietPost6 = DietPost(
  meal: true,
  userDetails: _dummyUser,
  calories: 290,
  minutes: 25,
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
  bodyTag: 'weightloss',
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/protein3.jpg',
  // hasViewed: false,
  ratings: [{'userid': 'zach', 'rating' : 3}, {'userid': 'michelle', 'rating' : 4}, {'userid': 'keagan', 'rating' : 3.5}],
  comments: [
    {'id': 'zach', 'comment': 'looks tasty!'},
    {'id': 'Tom', 'comment': 'Master Chef!'},
    {'id': 'Nelius', 'comment': 'Bravo chef'}
  ],
  collection: _collection2,
);

// Dummy Post 07
DietPost _dietPost7 = DietPost(
  meal: true,
  userDetails: _dummyUser,
  calories: 798,
  minutes: 34,
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
  bodyTag: 'weightloss',
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/burger1.jpg',
  // hasViewed: false,
  ratings: [{'userid': 'zach', 'rating' : 3}, {'userid': 'michelle', 'rating' : 4}, {'userid': 'keagan', 'rating' : 3.5}],
  comments: [
    {'id': 'zach', 'comment': 'looks tasty!'},
    {'id': 'Tom', 'comment': 'Master Chef!'},
    {'id': 'Nelius', 'comment': 'Bravo chef'}
  ],
  collection: _collection3,
);

// Dummy Post 08
DietPost _dietPost8 = DietPost(
  meal: true,
  userDetails: _dummyUser,
  calories: 609,
  minutes: 15,
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
  bodyTag: 'weightloss',
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/burger2.jpg',
  // hasViewed: false,
  ratings: [{'userid': 'zach', 'rating' : 3}, {'userid': 'michelle', 'rating' : 4}, {'userid': 'keagan', 'rating' : 3.5}],
  comments: [
    {'id': 'zach', 'comment': 'looks tasty!'},
    {'id': 'Tom', 'comment': 'Master Chef!'},
    {'id': 'Nelius', 'comment': 'Bravo chef'}
  ],
  collection: _collection3,
);


// Dummy Post
TextPost _textPost = TextPost(
    userDetails: _dummyUser,
    title: 'Trip to Boston', // limit characters
    subTitle: 'How I became a post doc fellow at MIT', // limit characters
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    hasViewed: false,
    isFavourite: false,
    collection: _collection1);

// Dummy User
UserDetails _dummyUser = UserDetails(
  userId: '@ZachWolpe87',
  userEmail: 'dummy@dummy.com',
  userName: 'Zach Wolpe',
  userProfilePicture: 'assets/images/profile_pic2.jpg',
  userPassword: 'dummy password',
  userBio: '22 year old South African, staying healthy',
  userFullBio: _dummyUserFullBio,
);

// Dummy Collection 1
Collection _collection1 = Collection(
    colour: Colors.pink,
    title: 'Diet Bowl',
    tags: ['get lean', 'lose weight', 'healty option'],
    description:
        'this diet is designed to let you lose weight and enjoy doing it!',
    category: 'Meals');

// Dummy Collection 2
Collection _collection2 = Collection(
    colour: Colors.indigo,
    title: 'Lean Protein',
    tags: ['get lean', 'build muscle'],
    description: 'get your protein in, its delicious',
    category: 'Meals');

// Dummy Collection 3
Collection _collection3 = Collection(
    colour: Colors.amber[800],
    title: 'Burgers',
    tags: ['cheat meal', 'enjoy life'],
    description: 'sometimes you have to let go & enjoy a balance',
    category: 'Meals');

// Dummy User FUll Bio
FullBio _dummyUserFullBio = FullBio(title: 'full bio in hrerre');

// Pass to Dummy Post Displays

// List _posts = [_dietPost, _textPost, _dietPost2, _dietPost3, _dietPost4, _dietPost5, _dietPost6, _dietPost7, _dietPost8, _dietPost9];
List _posts = [_textPost, _dietPost2];

// ..................................... DELETE WHEN ADDING REAL DATA : DUMMY POSTS ....................................................
// .....................................................................................................................................
// .....................................................................................................................................
// .....................................................................................................................................

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  // void _addPost(DietPost product) {
  //   // add diet Post
  //   setState(() {
  //     _posts.add(product);
  //     MaterialPageRoute(
  //     builder: (BuildContext context) =>
  //       HomePage(_posts)
  //     );
  //     print(_posts);
  //   });

  void addPost(dynamic post) {
    setState(() {
      _posts.add(post);
    });
    print(post);
  }

  // }

  // void _deletePost(int index) {
  //   setState(() {
  //     _posts.removeAt(index);
  //   });
  // }

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
      return UploadPage(addPost);
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
                    color: _currentIndex == 0
                        ? Colors.lightBlue[800]
                        : Colors.grey)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(
                  Icons.search,
                  color:
                      _currentIndex == 1 ? Colors.lightBlue[800] : Colors.grey,
                )),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(Icons.camera_alt,
                    color: _currentIndex == 2
                        ? Colors.lightBlue[800]
                        : Colors.grey)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(Icons.favorite,
                    color: _currentIndex == 3
                        ? Colors.lightBlue[800]
                        : Colors.grey)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(Icons.person,
                    color: _currentIndex == 4
                        ? Colors.lightBlue[800]
                        : Colors.grey))
          ],
          onTap: _onTapNavigationBar,
        ),
      ),
    );
  }
}
