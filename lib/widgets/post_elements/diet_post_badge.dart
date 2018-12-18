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
            color: Colors.white12));
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
      List<Widget> widgetBuild =
          widget._post.benefits.map((name) => Text(name)).toList();
      Column showMore = Column(children: widgetBuild);
      return _cancleState(showMore);
    }
    if (index == 2) {
      List<Widget> widgetBuild =
          widget._post.ingredients.map((name) => Text(name)).toList();
      Column showMore = Column(children: widgetBuild);
      return _cancleState(showMore);
    }
    if (index == 3) {
      Text showMore = Text(widget._post.recipe);
      return _cancleState(showMore);
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
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class RecipeBadgeCakeSmall extends StatelessWidget {
  // Cake Tag
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 30,
        child:
            Center(child: Icon(Icons.cake, size: 20, color: Colors.teal[200])),
        decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: Colors.teal[200]),
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.teal[50]));
  }
}

class RecipeBadgeFastfoodSmall extends StatelessWidget {
  // Fastfood  Tag
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 30,
        child: Center(
            child: Icon(Icons.fastfood, size: 20, color: Colors.teal[200])),
        decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: Colors.teal[200]),
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.teal[50]));
  }
}

class RecipeBadgeLocalDiningSmall extends StatelessWidget {
  // Local Dining Tag
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 30,
        child: Center(child: Icon(Icons.local_dining, color: Colors.teal[200])),
        decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: Colors.teal[200]),
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.teal[50]));
  }
}
