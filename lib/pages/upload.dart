import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

// Page Navigation
import './upload pages/meal.dart';
import './upload pages/text.dart';

class UploadPage extends StatefulWidget {
  final Function addPost;

  UploadPage(this.addPost);

  @override 
  State<StatefulWidget> createState() {
    return _UploadPageState();
  }
}

class _UploadPageState extends State<UploadPage> with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    super.initState();
  }

  Widget _card(String text, IconData icon, int navigationIndex, Color colour,
      {Image image /*if implement background image*/} /*add navigator path*/) {
    // Widget that builds the cards displayed
    return ScaleTransition(
      scale: CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 1.0, curve: Curves.easeOut),
      ),
      child: GestureDetector(
        onTap: () {
          if (navigationIndex == 1) {
            // navigate cardio
          } else if (navigationIndex == 2) {
            // navigate to text page
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => TextUploadPage(colour, widget.addPost)));
          } else if (navigationIndex == 3) {
            // navigate workout
          } else if (navigationIndex == 4) {
            // navigate to diet page
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => MealUploadPage(colour, widget.addPost)));
          }
        },
        onDoubleTap: () {
          //
        },
        onLongPress: () {
          // change colour
        },
        child: Card(
          color: colour,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          elevation: 20,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: Container(
            height: 190,
            width: 130,
            //
            // decoration: BoxDecoration(
            //   border: Border.all(color: colour),
            //   borderRadius: BorderRadius.circular(12.0),
            // ),
            //
            child: Column(
              children: <Widget>[
                Expanded(child: Container()),
                Center(child: Icon(icon, size: 100, color: Colors.white)),
                SizedBox(height: 8),
                Text(text,
                    style: TextStyle(
                        fontFamily: 'myriad-pro-light',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 20)),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(height: 40),
            Row(
              children: <Widget>[
                Expanded(child: Container()),
                Text('CREATE.',
                    style: TextStyle(
                        fontFamily: 'myriad-pro-bold',
                        fontWeight: FontWeight.w100,
                        fontSize: 60)),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 3),
            Row(
              children: <Widget>[
                Expanded(child: Container()),
                Text('and share',
                    style: TextStyle(
                        fontFamily: 'myriad-pro-light',
                        fontWeight: FontWeight.w900,
                        fontSize: 35)),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: <Widget>[
                Expanded(child: Container()),
                _card('cardio', Icons.all_inclusive, 1, Colors.blue[600]),
                //SizedBox(width: 4),
                _card('text', Icons.text_fields, 2, Colors.orange[600]),
                Expanded(child: Container()),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: <Widget>[
                Expanded(child: Container()),
                _card('workout', Icons.fitness_center, 3, Colors.amber[500]),
                //SizedBox(width: 4),
                _card('meal', Icons.local_dining, 4, Colors.cyanAccent[400]),
                Expanded(child: Container()),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
