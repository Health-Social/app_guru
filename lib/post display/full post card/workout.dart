import 'package:flutter/material.dart';

import '../../post types/workout_post.dart';

class WorkoutPostFull extends StatefulWidget {
  final WorkoutPost _post;

  WorkoutPostFull(this._post);

  _WorkoutPostFullState createState() => _WorkoutPostFullState();
}

class _WorkoutPostFullState extends State<WorkoutPostFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
        title: Text('CheeseCake', style: TextStyle(fontFamily: 'Comfortaa', color: Colors.black), ),),
      body: ListView(
        children: <Widget>[
          Image.asset(widget._post.imageUrl)
        ],
      ),);
  }
}