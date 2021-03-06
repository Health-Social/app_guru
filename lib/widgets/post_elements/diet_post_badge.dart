import 'package:flutter/material.dart';

import '../../post types/diet_post.dart';

// Main Recipe 'R' Badge

class RecipeBadge extends StatelessWidget {
  // main recipe badge
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        child: Center(
            child: Icon(
          Icons.local_dining,
          color: Colors.teal[300],
          size: 30,
        )),
        decoration: BoxDecoration(
            border: Border.all(width: 3.5, color: Colors.teal[300]),
            borderRadius: BorderRadius.circular(25.0),
            color: Colors.white30));
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Benefits - Ingredients - Recipe Button

class RecipeSubBar extends StatefulWidget {
  final DietPost _post;

  RecipeSubBar(this._post);

  _RecipeSubBarState createState() => _RecipeSubBarState();
}

class _RecipeSubBarState extends State<RecipeSubBar> {
  int index = 0;

// benefits button
  Widget _benefitsButton() {
    if (index == 1) {
      // selected
      return GestureDetector(
        onTap: () {
          setState(() {
            index = 0;
          });
        },
        child: Container(
            height: 55,
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Benefits',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
                SizedBox(width: 2),
                Icon(Icons.cake, color: Colors.black),
              ],
            ),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey[100]),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[100])),
      );
    } else {
      return GestureDetector(
        // not selected
        onTap: () {
          setState(() {
            index = 1;
          });
        },
        child: Container(
            height: 55,
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Benefits',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontWeight: FontWeight.w700)),
                SizedBox(width: 2),
                Icon(Icons.cake, color: Colors.grey),
              ],
            ),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white)),
      );
    }
  }

// Ingredients
  Widget _ingredientsButton() {
    if (index == 2) {
      // selected
      return GestureDetector(
        onTap: () {
          setState(() {
            index = 0;
          });
        },
        child: Container(
            height: 55,
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Ingredients',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
                SizedBox(width: 2),
                Icon(Icons.fastfood, color: Colors.black),
              ],
            ),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey[100]),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[100])),
      );
    } else {
      return GestureDetector(
        // not selected
        onTap: () {
          setState(() {
            index = 2;
          });
        },
        child: Container(
            height: 55,
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Ingredients',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontWeight: FontWeight.w700)),
                SizedBox(width: 2),
                Icon(Icons.fastfood, color: Colors.grey),
              ],
            ),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white)),
      );
    }
  }

// Recipe
  Widget _recipeButton() {
    if (index == 3) {
      // selected
      return GestureDetector(
        onTap: () {
          setState(() {
            index = 0;
          });
        },
        child: Container(
            height: 55,
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Recipe',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
                SizedBox(width: 2),
                Icon(Icons.hourglass_empty, color: Colors.black),
              ],
            ),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey[100]),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[100])),
      );
    } else {
      return GestureDetector(
        // not selected
        onTap: () {
          setState(() {
            index = 3;
          });
        },
        child: Container(
            height: 55,
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Recipe',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontWeight: FontWeight.w700)),
                SizedBox(width: 2),
                Icon(Icons.hourglass_empty, color: Colors.grey),
              ],
            ),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white)),
      );
    }
  }

// show brief: Benefits - Ingredients - Recipe
  Widget _showMore() {
    Widget _cancleState(showMore) {
      return GestureDetector(
        onTap: () {
          setState(() {
            index = 0;
          });
        },
        child: showMore,
      );
    }

    if (index == 1) {
      Container showMore = Container(
          padding: EdgeInsets.all(12), 
          child: Text(widget._post.benefits));
      return _cancleState(showMore);
      // convert list to display
      // List<Widget> widgetBuild =
      //     widget._post.benefits.map((name) => Text(name)).toList();
      // Container showMore = Container(
      //     padding: EdgeInsets.all(12), child: Column(children: widgetBuild));
      // return _cancleState(showMore);
    }
    if (index == 2) { 
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
        height: double.parse(widget._post.ingredients.length.toString()) * 35,
        child: ListView.builder(
        itemCount: widget._post.ingredients.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(children: <Widget>[
            Row(children: <Widget>[
            SizedBox(width: 15),
            Container(
              width: 105,
              child: Text(widget._post.ingredients[index]['quantity'],style: TextStyle(fontSize: 12))),
              Expanded(child: 
            Container(
              child: Text(widget._post.ingredients[index]['ingredient'], style: TextStyle(fontSize: 15))),),
          ],),
          Divider(indent: 15),
          ],);
        },),);
    }
    if (index == 3) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
        height: 300,
        child: ListView.builder(
          itemCount: widget._post.recipe.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: <Widget>[
              SizedBox(height: 7),
              Row(children: <Widget>[
                Text(widget._post.recipe[index]['title'],style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100 )), 
              ],),
              SizedBox(height: 7),
              Text(widget._post.recipe[index]['description'],style: TextStyle(fontSize: 14)),
              Divider(indent: 6),
            ],);
          },
        )
        
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _benefitsButton(),
              SizedBox(width: 1),
              _ingredientsButton(),
              SizedBox(width: 1),
              _recipeButton(),
            ],
          ),
        ),
        _showMore(),
      ],
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Calories & Time

class CaloriesTimeBar extends StatefulWidget {
  final double calories;
  final double minutes;
  final bool large;

  CaloriesTimeBar(this.calories, this.minutes, this.large);

  @override
  State<StatefulWidget> createState() {
    return _CaloriesTimeBarState();
  }
}

class _CaloriesTimeBarState extends State<CaloriesTimeBar> {
  bool _showCals = true;
  bool _showClock = true;

  double _numberSize() {
    if (widget.large == true) {
      return 45;
    } else {
      return 35;
    }
  }

  Widget _calories(String calories) {
    // calories display
    double kilojs = widget.calories * 4.184;

    Container _displayContainer = _showCals
        ? Container(
            child: Container(
            padding: EdgeInsets.only(right: 35, top: 4),
            child: Column(
              children: <Widget>[
                Text(
                  calories,
                  style: TextStyle(
                      fontFamily: 'myriad-pro-light',
                      color: Colors.lightBlue[800],
                      fontSize: _numberSize(),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'calories',
                  style: TextStyle(
                      fontFamily: 'myriad-pro-light',
                      color: Colors.lightBlue[800],
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ))
        : Container(
            child: Container(
            padding: EdgeInsets.only(right: 35, top: 4),
            child: Column(
              children: <Widget>[
                Text(
                  kilojs.round().toString(),
                  style: TextStyle(
                      fontFamily: 'myriad-pro-light',
                      color: Colors.lightBlue[800],
                      fontSize: _numberSize(),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'kilojoules',
                  style: TextStyle(
                      fontFamily: 'myriad-pro-light',
                      color: Colors.lightBlue[800],
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ));

    return GestureDetector(
        onTap: () {
          setState(() {
            if (_showCals) {
              _showCals = false;
            } else {
              _showCals = true;
            }
          });
        },
        child: _displayContainer);
  }

  Widget _minutes(String minutes) {
    double _seconds = widget.minutes * 60;
    //  minutes display

     Container _timeDisplay = _showClock
        ? Container(
            padding: EdgeInsets.only(left: 35, top: 4),
            child: Column(
              children: <Widget>[
                Text(
                  minutes,
                  style: TextStyle(
                      fontFamily: 'myriad-pro-light',
                      color: Colors.lightBlue[800],
                      fontSize: _numberSize(),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'minutes',
                  style: TextStyle(
                      fontFamily: 'myriad-pro-light',
                      color: Colors.lightBlue[800],
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        : Container(
            padding: EdgeInsets.only(left: 35, top: 4),
            child: Column(
              children: <Widget>[
                Text(
                  _seconds.round().toString(),
                  style: TextStyle(
                      fontFamily: 'myriad-pro-light',
                      color: Colors.lightBlue[800],
                      fontSize: _numberSize(),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  'seconds',
                  style: TextStyle(
                      fontFamily: 'myriad-pro-light',
                      color: Colors.lightBlue[800],
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        

    return GestureDetector(
      onTap: () {
        setState(() {
          if (_showClock) {
            _showClock = false;
          } else {
            _showClock = true;
          }
        });
      },
      child: _timeDisplay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _calories(widget.calories.round().toString()),
      Container(
        height: 35,
        width: 1,
        color: Colors.lightBlue[800],
      ),
      _minutes(widget.minutes.round().toString()),
    ]);
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
