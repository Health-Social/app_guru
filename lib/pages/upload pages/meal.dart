import 'package:flutter/material.dart';

import '../../users/user_details.dart';
import '../../post types/diet_post.dart';
import '../../users/full_bio.dart';

class MealUploadPage extends StatefulWidget {
  final Color _colour;

  MealUploadPage(this._colour);

  _MealUploadPageState createState() => _MealUploadPageState();
}








 ///
  ///
  ///// Dummy User
UserDetails _dummyUser = UserDetails(
  userId: '@ZachWolpe87',
  userEmail: 'dummy@dummy.com',
  userName: 'Zach Wolpe',
  userProfilePicture: 'assets/images/profile_pic2.jpg',
  userPassword: 'dummy password',
  userBio: '22 year old South African, staying healthy',
  userFullBio: _dummyUserFullBio,
);

// Dummy User FUll Bio
FullBio _dummyUserFullBio = FullBio(title: 'full bio in hrerre');
  ///
  ///













class _MealUploadPageState extends State<MealUploadPage> {
  // data to save for post
  String placeholderImage = 'assets/images/logo.png';
  double calories;
  double minutes;
  String benefits;
  List<String> ingredients;
  String recipe;

  InputDecoration _textFieldStyle(String _label) {
    // consistent text style
    return InputDecoration(
        labelStyle: TextStyle(color: Colors.black54, fontSize: 16),
        labelText: _label,
        fillColor: Colors.black);
  }

  GestureDetector _uploadImage() {
    // 'Upload Image' image and button
    return GestureDetector(
      onTap: () {
        // go to photo gallary
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 220,
        decoration: BoxDecoration(
            border: Border.all(width: 2.5, color: Colors.grey),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/default.png'))),
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(child: Container()),
              Text('Upload Image'),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _caloriesAndTime() {
    // calories and time imput feilds
    return Row(children: <Widget>[
      Container(width: MediaQuery.of(context).size.width * 0.025),
      Container(
        // calories input
        height: 40,
        width: MediaQuery.of(context).size.width * 0.46,
        child: TextField(
          onSubmitted: (_calories) {
            setState(() {
              calories = double.parse(_calories);
            });
          },
          keyboardType: TextInputType.number,
          decoration: _textFieldStyle('  calories'),
        ),
      ),
      Expanded(child: Container()),
      Container(
        // Time input
        height: 40,
        width: MediaQuery.of(context).size.width * 0.46,
        child: TextField(
          onChanged: (text) {
setState(() {
  minutes = double.parse(text);
});
          },
          keyboardType: TextInputType.datetime,
          decoration: _textFieldStyle('  minutes'),
        ),
      ),
      Container(width: MediaQuery.of(context).size.width * 0.025),
    ]);
  }

  BoxDecoration _pageDecoration() {
    // blackdrop colour
    return BoxDecoration(
      gradient: LinearGradient(
          begin: FractionalOffset.bottomCenter,
          end: FractionalOffset.topCenter,
          colors: <Color>[
            Colors.tealAccent,
            widget._colour,
            widget._colour,
          ]),
    );
  }

  Widget _benefitsIngredientsRecipe() {
    // benefits, ingredients, recipe
    return Column(
      children: <Widget>[
        Center(
          // benefits input
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.95,
            child: TextField(
              onChanged: (text) {
setState(() {
  benefits = text;
});
          },
              maxLines: 2,
              keyboardType: TextInputType.text,
              decoration: _textFieldStyle('  benefits'),
            ),
          ),
        ),
        SizedBox(height: 10),
        Center(
          // ingredients input
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.95,
            child: TextField(
              onChanged: (text) {
setState(() {
 // text --> list
});
          },
              maxLines: 2,
              keyboardType: TextInputType.text,
              decoration: _textFieldStyle('  ingredients'),
            ),
          ),
        ),
        SizedBox(height: 10),
        Center(
          // recipe input
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width * 0.95,
            child: TextField(
              onChanged: (text) {
setState(() {
  recipe = text;
});
          },
              maxLines: 2,
              keyboardType: TextInputType.text,
              decoration: _textFieldStyle('  recipe'),
            ),
          ),
        ),
      ],
    );
  }

  _newPost(){
    // create the new post
    DietPost _newPost = DietPost(
      imagePath: placeholderImage,
      calories: calories,
      minutes: minutes,
      ingredients: [],
      recipe: recipe,
      benefits: [],
      bodyTag: '',
      imageUrl: placeholderImage,
      userDetails: _dummyUser,
    );
  }


 
  

  RaisedButton _postButton() {
    // create the new post
    return RaisedButton(
              onPressed: () {
                // add post function
              },
              color: Colors.pink,
              child: Text('post', style: TextStyle(color: Colors.white)),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // blackdrop colour
        decoration: _pageDecoration(),
        child: ListView(
          children: <Widget>[
            _uploadImage(),
            _caloriesAndTime(),
            SizedBox(height: 14),
            _benefitsIngredientsRecipe(),
            SizedBox(height: 14),
            _postButton(),
          ],
        ),
      ),
    );
  }
}
