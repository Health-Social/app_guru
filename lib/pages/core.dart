// the core page leads to everything in the app, once the user is already signed in

import 'package:flutter/material.dart';

// import pages
import './home.dart';
import './notification.dart';
import './profile pages/profile.dart';
import './search.dart';
import './upload.dart';

// import types
import '../post types/text_post.dart';
import '../post types/diet_post.dart';
import '../post types/collection.dart';

// import user types
import '../users/full_bio.dart';
import '../users/user_details.dart';

// import Root pages
import './authentication/auth.dart';

class CorePage extends StatefulWidget {
  final BaseAuth auth;
  final VoidCallback onSignedOut;

  CorePage({this.auth, this.onSignedOut});

  _CorePageState createState() => _CorePageState();
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
  benefits: 'loose weight, get stronger, live happily',
  ingredients: [
    {'quantity': '5 grams', 'ingredient': 'salt'},
    {'quantity': '5 grams', 'ingredient': 'pepper'},
    {'quantity': '2', 'ingredient': 'eggs'},
    {'quantity': '5 ounces', 'ingredient': 'flower'},
    {'quantity': '1 cup', 'ingredient': 'water'},
  ],
  recipe: [
    {
      'title': 'Step 1',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 2',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 3',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 4',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 5',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
  ],
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/healthBowl.jpg',
  // hasViewed: false,
  ratings: [
    {'userid': 'zach', 'rating': 3},
    {'userid': 'michelle', 'rating': 4},
    {'userid': 'keagan', 'rating': 3.5}
  ],
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
  benefits: 'loose weight, get stronger, live happily',
  ingredients: [
    {
      'quantity': '5 grams sdkgnog sgij io jw i',
      'ingredient':
          'salt slgfj sigj soigj srigs igs gsgs his s s sgisg ks hsk sk sh glkfishg'
    },
    {'quantity': '5 grams', 'ingredient': 'pepper'},
    {'quantity': '2', 'ingredient': 'eggs'},
    {'quantity': '5 ounces', 'ingredient': 'flower'},
    {'quantity': '1 cup', 'ingredient': 'water'},
  ],
  recipe: [
    {
      'title': 'Step 1',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 2',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 3',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 4',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 5',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
  ],
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/bowl1.jpg',
  // hasViewed: false,
  ratings: [
    {'userid': 'zach', 'rating': 3},
    {'userid': 'michelle', 'rating': 4},
    {'userid': 'keagan', 'rating': 3.5}
  ],
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
  benefits: 'loose weight, get stronger, live happily',
  ingredients: [
    {'quantity': '5 grams', 'ingredient': 'salt'},
    {'quantity': '5 grams', 'ingredient': 'pepper'},
    {'quantity': '2', 'ingredient': 'eggs'},
    {'quantity': '5 ounces', 'ingredient': 'flower'},
    {'quantity': '1 cup', 'ingredient': 'water'},
  ],
  recipe: [
    {
      'title': 'Step 1',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 2',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 3',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 4',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 5',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
  ],
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/bowl2.jpg',
  // hasViewed: false,
  ratings: [
    {'userid': 'zach', 'rating': 3},
    {'userid': 'michelle', 'rating': 4},
    {'userid': 'keagan', 'rating': 3.5}
  ],
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
  benefits: 'loose weight, get stronger, live happily',
  ingredients: [
    {'quantity': '5 grams', 'ingredient': 'salt'},
    {'quantity': '5 grams', 'ingredient': 'pepper'},
    {'quantity': '2', 'ingredient': 'eggs'},
    {'quantity': '5 ounces', 'ingredient': 'flower'},
    {'quantity': '1 cup', 'ingredient': 'water'},
  ],
  recipe: [
    {
      'title': 'Step 1',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 2',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 3',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 4',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 5',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
  ],
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/protein1.jpg',
  // hasViewed: false,
  ratings: [
    {'userid': 'zach', 'rating': 3},
    {'userid': 'michelle', 'rating': 4},
    {'userid': 'keagan', 'rating': 3.5}
  ],
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
  benefits: 'loose weight, get stronger, live happily',
  ingredients: [
    {'quantity': '5 grams', 'ingredient': 'salt'},
    {'quantity': '5 grams', 'ingredient': 'pepper'},
    {'quantity': '2', 'ingredient': 'eggs'},
    {'quantity': '5 ounces', 'ingredient': 'flower'},
    {'quantity': '1 cup', 'ingredient': 'water'},
  ],
  recipe: [
    {
      'title': 'Step 1',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 2',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 3',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 4',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 5',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
  ],
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/protein2.jpg',
  // hasViewed: false,
  ratings: [
    {'userid': 'zach', 'rating': 3},
    {'userid': 'michelle', 'rating': 4},
    {'userid': 'keagan', 'rating': 3.5}
  ],
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
  benefits: 'loose weight, get stronger, live happily',
  ingredients: [
    {'quantity': '5 grams', 'ingredient': 'salt'},
    {'quantity': '5 grams', 'ingredient': 'pepper'},
    {'quantity': '2', 'ingredient': 'eggs'},
    {'quantity': '5 ounces', 'ingredient': 'flower'},
    {'quantity': '1 cup', 'ingredient': 'water'},
  ],
  recipe: [
    {
      'title': 'Step 1',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 2',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 3',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 4',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 5',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
  ],
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/protein3.jpg',
  // hasViewed: false,
  ratings: [
    {'userid': 'zach', 'rating': 3},
    {'userid': 'michelle', 'rating': 4},
    {'userid': 'keagan', 'rating': 3.5}
  ],
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
  benefits: 'loose weight, get stronger, live happily',
  ingredients: [
    {'quantity': '5 grams', 'ingredient': 'salt'},
    {'quantity': '5 grams', 'ingredient': 'pepper'},
    {'quantity': '2', 'ingredient': 'eggs'},
    {'quantity': '5 ounces', 'ingredient': 'flower'},
    {'quantity': '1 cup', 'ingredient': 'water'},
  ],
  recipe: [
    {
      'title': 'Step 1',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 2',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 3',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 4',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 5',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
  ],
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/burger1.jpg',
  // hasViewed: false,
  ratings: [
    {'userid': 'zach', 'rating': 6},
    {'userid': 'michelle', 'rating': 4},
    {'userid': 'keagan', 'rating': 3.5}
  ],
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
  benefits: 'loose weight, get stronger, live happily',
  ingredients: [
    {'quantity': '5 grams', 'ingredient': 'salt'},
    {'quantity': '5 grams', 'ingredient': 'pepper'},
    {'quantity': '2', 'ingredient': 'eggs'},
    {'quantity': '5 ounces', 'ingredient': 'flower'},
    {'quantity': '1 cup', 'ingredient': 'water'},
  ],
  recipe: [
    {
      'title': 'Step 1',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 2',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 3',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 4',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
    {
      'title': 'Step 5',
      'description':
          'dummy: mix cake into a batch of dummy text that is used to test design'
    },
  ],
  imagePath: 'dummy image path',
  imageUrl: 'assets/images/burger2.jpg',
  // hasViewed: false,
  ratings: [
    {'userid': 'zach', 'rating': 3},
    {'userid': 'michelle', 'rating': 4},
    {'userid': 'keagan', 'rating': 3.5}
  ],
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
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ratings: [
      {'userid': 'zach', 'rating': 3},
      {'userid': 'michelle', 'rating': 4},
      {'userid': 'keagan', 'rating': 3.5}
    ],
    comments: [
      {'id': 'zach', 'comment': 'looks tasty!'},
      {'id': 'Tom', 'comment': 'Master Chef!'},
      {'id': 'Nelius', 'comment': 'Bravo chef'}
    ],
    collection: _collection1);

// Dummy Post
TextPost _textPost2 = TextPost(
    anonymous: true,
    userDetails: _dummyUser,
    title: 'Mental Health', // limit characters
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    ratings: [
      {'userid': 'zach', 'rating': 3},
      {'userid': 'michelle', 'rating': 4},
      {'userid': 'keagan', 'rating': 3.5}
    ],
    comments: [
      {'id': 'zach', 'comment': 'looks tasty!'},
      {'id': 'Tom', 'comment': 'Master Chef!'},
      {'id': 'Nelius', 'comment': 'Bravo chef'}
    ],
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
List _posts = [_textPost, _dietPost, _dietPost2, _textPost2];

// ..................................... DELETE WHEN ADDING REAL DATA : DUMMY POSTS ....................................................
// .....................................................................................................................................
// .....................................................................................................................................
// .....................................................................................................................................

class _CorePageState extends State<CorePage> {
  int _currentIndex = 0;

  void _signOut() async {
    try {
      await widget.auth.signOut();
      widget.onSignedOut();
    } catch (error) {
      print(error);
    }
  }

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
                  fontSize: 20.0)),
          actions: <Widget>[
            // logout
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.black),
              ),
              child: 
            FlatButton(
              onPressed: _signOut,
              child: Text('Logout', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w100, color: Colors.black,),),
            ),)
          ],);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // run check, if not logged in go to sign in page, if logged in go to home page
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
                color: _currentIndex == 1 ? Colors.lightBlue[800] : Colors.grey,
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
                  color:
                      _currentIndex == 4 ? Colors.lightBlue[800] : Colors.grey))
        ],
        onTap: _onTapNavigationBar,
      ),
    );
  }
}
