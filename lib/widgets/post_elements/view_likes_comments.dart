import 'package:flutter/material.dart';

import '../../post types/diet_post.dart';
import '../../post types/workout_post.dart';

class ViewLikesComments extends StatefulWidget {
  final DietPost dietPost;
  final WorkoutPost workoutPost;

  ViewLikesComments({this.dietPost, this.workoutPost});

  _ViewLikesCommentsState createState() => _ViewLikesCommentsState();
}

class _ViewLikesCommentsState extends State<ViewLikesComments> {
  bool viewLikes = false;
  bool viewComments = false;
  dynamic _post;

  void initState() {
    // define either type of post into one variable
    super.initState();
    if (widget.dietPost != null) {
      _post = widget.dietPost;
    }
    if (widget.workoutPost != null) {
      _post = widget.dietPost;
    }
  }

  Widget _display() {
    // Display the 'x likes' text
    if (_post != null) {
      if (_post.isFavourite != null) {
        return Text('${_post.isFavourite.length} Likes',
            style: TextStyle(
                fontFamily: 'myriad-pro-light',
                fontWeight: FontWeight.w100,
                fontSize: 25));
      } else {
        return Text('0 Likes',
            style: TextStyle(
                fontFamily: 'myriad-pro-light',
                fontWeight: FontWeight.w100,
                fontSize: 25));
      }
    }
    if (widget.workoutPost != null) {
      //
      return Container();
    } else {
      return Container();
    }
  }

  Widget _viewLikes() {
    // // Display the 'x likes' (with detector)
    return GestureDetector(
      onTap: () {
        // view likes
        if (viewLikes) {
          setState(() {
            viewLikes = false;
            viewComments = false;
          });
        } else if (viewLikes == false) {
          setState(() {
            viewLikes = true;
            viewComments = false;
          });
        }
      },
      child: Container(
        margin: EdgeInsets.all(12),
        child: _display(),
      ),
    );
  }

  ListTile _listTile(int index) {
    // the listTile displayed per like or comment
    if (viewLikes) {
      return ListTile(
        title: Text(_post.isFavourite[index]),
      );
    }
    if (viewComments) {
      return ListTile(
        title: Text(_post.comments[index]['comment']),
        subtitle: Text(_post.comments[index]['id']),
      );
    }
  }

  Widget displayCard() {
    // card of likes or comments displayed
    if (viewLikes == true || viewComments == true) {
      return Container(
        width: MediaQuery.of(context).size.width - 20,
        height: MediaQuery.of(context).size.height * .35,
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 30,
            margin: EdgeInsets.all(12),
            child: ListView.builder(
              itemCount: _post.isFavourite.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    _listTile(index),
                    Divider(color: Colors.blueGrey[200]),
                  ],
                );
              },
            )),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            _viewLikes(),
            Expanded(child: Container()),
            // _post.isFavourite == true ?
            //  ? Icon(Icons.favorite, color: Colors.black)
            //  : Container(),
            Icon(Icons.favorite_border, color: Colors.black, size: 30.0),
            SizedBox(width: 3.0),
            GestureDetector(
              onTap: () {
                if (viewComments) {
                  setState(() {
                    viewComments = false;
                    viewLikes = false;
                  });
                }
                if (viewComments == false) {
                  setState(() {
                    viewComments = true;
                    viewLikes = false;
                  });
                }
              },
              child: Icon(Icons.comment, color: Colors.black, size: 25.0),
            ),
            SizedBox(width: 10.0)
          ],
        ),
        SizedBox(height: 10),
        displayCard(),
      ],
    );
  }
}