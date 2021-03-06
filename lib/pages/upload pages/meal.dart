import 'package:flutter/material.dart';

import '../../users/user_details.dart';
import '../../post types/diet_post.dart';
import '../../users/full_bio.dart';

// pages
import '../../main.dart';

class MealUploadPage extends StatefulWidget {
  final Color _colour;
  final Function addPost;

  MealUploadPage(this._colour, this.addPost);

  _MealUploadPageState createState() => _MealUploadPageState();
}

class _MealUploadPageState extends State<MealUploadPage> {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  double _ingredientsRows = 2;
  double _recipeRows = 2;

  ///// Dummy User
  UserDetails _dummyUser = UserDetails(
    userId: '@ZachWolpe87',
    userEmail: 'dummy@dummy.com',
    userName: 'Zach Wolpe',
    userProfilePicture: 'assets/images/profile_pic2.jpg',
    userPassword: 'dummy password',
    userBio: '22 year old South African, staying healthy',
    userFullBio: FullBio(title: 'full bio in hrerre'),
  );

  // data to save for post
  String _placeholderImage = 'assets/images/logoBlue.png';
  double _calories;
  double _minutes;
  String _benefits;
  List<String> _ingredients;
  String _recipe;

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

  Widget _titleFormField() {
    // Text field (function and design)
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        onSaved: (text) {
          setState(() {});
        },
        validator: (String value) {
          if (value.isEmpty) {
            return 'title is required';
          }
        },
        maxLength: 20,
        decoration: InputDecoration(
            labelText: 'Title',
            labelStyle: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            )),
      ),
    );
  }

  Widget _caloriesAndTime() {
    // calories and time imput feilds
    return Row(children: <Widget>[
      Container(width: MediaQuery.of(context).size.width * 0.05),
      Container(
        // calories input
        height: 40,
        width: MediaQuery.of(context).size.width * 0.4,
        child: TextFormField(
          //   key: _globalKey,
          onSaved: (calories) {
            setState(() {
              _calories = double.parse(calories);
            });
          },
          validator: (value) {
            if (value.isEmpty) {
              return '';
            }
          },
          keyboardType: TextInputType.number,
          decoration: _textFieldStyle('calories'),
        ),
      ),
      Expanded(child: Container()),
      Container(
        // Time input
        height: 40,
        width: MediaQuery.of(context).size.width * 0.4,
        child: TextFormField(
          onSaved: (value) {
            setState(() {
              _minutes = double.parse(value);
            });
          },
          validator: (value) {
            if (value.isEmpty) {
              return '';
            }
          },
          keyboardType: TextInputType.number,
          decoration: _textFieldStyle('minutes'),
        ),
      ),
      Container(width: MediaQuery.of(context).size.width * 0.05),
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

  Widget _addRowButton(int key) {
    // add row, key to know where to add line
    return GestureDetector(
      onTap: () {
        setState(() {
          if (key == 1) {
            _ingredientsRows = _ingredientsRows + 1;
          } else if (key == 2) {
            _recipeRows = _recipeRows + 1;
          }
        });
      },
      child: Icon(
        Icons.add_circle_outline,
        size: 28,
        color: Colors.grey[500],
      ),
    );
  }

  Widget _deleteRowButton(int key) {
    // delete row, key to know where to add line
    return GestureDetector(
      onTap: () {
        setState(() {
          if (key == 1) {
            if (_ingredientsRows > 2) {
              _ingredientsRows = _ingredientsRows - 1;
            }
          } else if (key == 2) {
            if (_recipeRows > 2) {
              _recipeRows = _recipeRows - 1;
            }
          }
        });
      },
      child: Icon(
        Icons.remove_circle_outline,
        size: 28,
        color: Colors.grey[500],
      ),
    );
  }

  Widget _renderListOfIngredients() {
    return Row(
      children: <Widget>[
        Container(width: 80, child: TextFormField()),
        SizedBox(width: 10),
        Expanded(
          child: TextFormField(),
        )
      ],
    );
  }

  Widget _benefitsIngredientsRecipe() {
    // benefits, ingredients, recipe
    return Column(
      children: <Widget>[
        Center(
          // benefits input
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: MediaQuery.of(context).size.width * 0.95,
            child: TextFormField(
              onSaved: (text) {
                setState(() {
                  _benefits = text;
                });
              },
              validator: (text) {
                if (text.isEmpty) {
                  return 'required';
                }
              },
              maxLines: 3,
              keyboardType: TextInputType.text,
              decoration: _textFieldStyle('  benefits'),
            ),
          ),
        ),
        SizedBox(height: 10),
        Center(
            // ingredients input
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'INGREDIENTS',
                    style:
                        TextStyle(fontFamily: 'myriad_pro_light', fontSize: 18),
                  )
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  SizedBox(width: 5),
                  Text('quantity',
                      style: TextStyle(
                          fontFamily: 'myraid_pro_light',
                          fontSize: 13,
                          color: Colors.grey)),
                  SizedBox(width: 50),
                  Text('ingredient',
                      style: TextStyle(
                          fontFamily: 'myraid_pro_light',
                          fontSize: 13,
                          color: Colors.grey)),
                ],
              ),
              //  make one for every click
              _renderListOfIngredients(), // add one of these on click
              _renderListOfIngredients(),
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Expanded(child: Container()),
                  _deleteRowButton(1),
                  SizedBox(width: 5),
                  _addRowButton(1)
                ],
              )
            ],
          ),
        ))
      ],
    );
  }

  DietPost _newPost() {
    // create the new post
    return DietPost(
      meal: true,
      imagePath: _placeholderImage,
      calories: _calories,
      minutes: _minutes,
      //  ingredients: _ingredients,
      //  recipe: _recipe,
      // benefits: _benefits,
      imageUrl: _placeholderImage,
      userDetails: _dummyUser,
    );
  }

  Widget _postButton() {
    // create the new post
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: RaisedButton(
          onPressed: () {
            // add post function
            if (!_globalKey.currentState.validate()) {
              return;
            }
            _globalKey.currentState.save();
            DietPost _newPost = DietPost(
              meal: true,
              imagePath: _placeholderImage,
              calories: _calories,
              minutes: _minutes,
              ingredients: [
                {'quantity': 'dummy', 'ingredient': 'dummy'}
              ], // dummy text
              recipe: [
                {'quantity': 'dummy', 'ingredient': 'dummy'}
              ], // dummy text,
              benefits: _benefits,
              imageUrl: _placeholderImage,
              userDetails: _dummyUser,
            );
            widget.addPost(_newPost);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) => MyApp()));
          },
          color: widget._colour,
          child: Text('post', style: TextStyle(color: Colors.white)),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // styling
      decoration: BoxDecoration(
        color: widget._colour,
      ),
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.92,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            key: _globalKey,
            child: ListView(
              children: <Widget>[
                _uploadImage(),
                SizedBox(height: 25),
                _caloriesAndTime(),
                SizedBox(height: 25),
                _benefitsIngredientsRecipe(),
                SizedBox(height: 60),
                _postButton(),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
