import 'package:flutter/material.dart';

import '../../post types/workout_post.dart';

// Recipe 'R' Badge

class WorkoutBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        child: Center(
          child: Icon(
            Icons.fitness_center,
            color: Colors.lightBlue[900],
            size: 30,
          ),
        ),
        decoration: BoxDecoration(
            border: Border.all(width: 3.5, color: Colors.lightBlue[900]),
            borderRadius: BorderRadius.circular(25.0),
            color: Colors.white30));
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Benefits - Ingredients - Recipe Button

class WorkoutSubBar extends StatefulWidget {
  final WorkoutPost _post;

  WorkoutSubBar(this._post);

  _WorkoutSubBarState createState() => _WorkoutSubBarState();
}

class _WorkoutSubBarState extends State<WorkoutSubBar> {
  int index = 0;

// benefits button
  Widget _musclesButton() {
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
                Text('Muscles',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
                SizedBox(width: 2),
                Icon(Icons.accessibility_new, color: Colors.black),
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
                Text('Muscles',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontWeight: FontWeight.w700)),
                SizedBox(width: 2),
                Icon(Icons.accessibility_new, color: Colors.grey),
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
  Widget _styleButton() {
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
                Text('Style ',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
                SizedBox(width: 2),
                Icon(Icons.directions_bike, color: Colors.black),
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
                Text('Style ',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontWeight: FontWeight.w700)),
                SizedBox(width: 2),
                Icon(Icons.directions_bike, color: Colors.grey),
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
  Widget _routineButton() {
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
                Text('Routine',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
                SizedBox(width: 2),
                Icon(Icons.golf_course, color: Colors.black),
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
                Text('Routine',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontWeight: FontWeight.w700)),
                SizedBox(width: 2),
                Icon(Icons.golf_course, color: Colors.grey),
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
  // Widget _showMore() {
  //   Widget _cancleState(showMore) {
  //     return GestureDetector(
  //       onTap: () {
  //         setState(() {
  //           index = 0;
  //         });
  //       },
  //       child: showMore,
  //     );
  //   }

  //   if (index == 1) {
  //     List<Widget> widgetBuild =
  //         widget._post.benefits.map((name) => Text(name)).toList();
  //     Column showMore = Column(children: widgetBuild);
  //     return _cancleState(showMore);
  //   }
  //   if (index == 2) {
  //     List<Widget> widgetBuild =
  //         widget._post.ingredients.map((name) => Text(name)).toList();
  //     Column showMore = Column(children: widgetBuild);
  //     return _cancleState(showMore);
  //   }
  //   if (index == 3) {
  //     Text showMore = Text(widget._post.recipe);
  //     return _cancleState(showMore);
  //   }
  //   return Container();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _musclesButton(),
              SizedBox(width: 1),
              _styleButton(),
              SizedBox(width: 1),
              _routineButton(),
            ],
          ),
        ),
        // _showMore(),
      ],
    );
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Recipe Tags

class WorkoutBadge1 extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 37,
        width: 37,
        child: Center(child: Icon(Icons.fitness_center)),
        decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.grey[600]),
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey[300]));
  }
}

class WorkoutBadge2 extends StatelessWidget {
  // Fastfood  Tag
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 37,
        width: 37,
        child: Center(child: Icon(Icons.fingerprint)),
        decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.grey[600]),
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey[300]));
  }
}

class WorkoutBadge3 extends StatelessWidget {
  // Local Dining Tag
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 37,
        width: 37,
        child: Center(child: Icon(Icons.flash_on)),
        decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.grey[600]),
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey[300]));
  }
}
