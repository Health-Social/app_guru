import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

// import Pages
import '../../pages/collections & recommendations/collect_recommend.dart';

// like, comment and recommend icons and bar

class Interact extends StatefulWidget {
  final dynamic _post;
  final double displayCode;
  // add function to replace post

  Interact(this._post, this.displayCode);

  _InteractState createState() => _InteractState();
}

class _InteractState extends State<Interact> {
  bool _dropDown = false;
  double _currentIndex;
  double _averageRating = 3.5;
  double _myRating = 0;
  // add function to replace post when LIKED, UNLIKED

  Widget _dropDownExpand() {
    // drop down button
    Container _container = _dropDown
        ? Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.expand_more, color: Colors.black87, size: 30.0),
          )
        : Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.expand_less, color: Colors.black87, size: 30.0),
          );

    return GestureDetector(
      onTap: () {
        setState(() {
          if (_dropDown) {
            _dropDown = false;
          } else {
            _dropDown = true;
          }
        });
      },
      child: _container,
    );
  }

  Widget _collectOrRecommend() {
    // collect or recommend
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => CollectRecommendPage()));
      },
      child: Row(
        children: <Widget>[
          SizedBox(width: 12),
          Icon(Icons.fingerprint, color: Colors.black, size: 40.0),
          SizedBox(width: 5),
        ],
      ),
    );
  }

  Widget _details() {
    // who rated & commented
    Widget _listTile(int index) {
      // view ratings
      if (_currentIndex == 0) {
        return ListTile(
        title: Text(widget._post.ratings[index]['userid']),
        trailing: Container(
          width: 155,
          child: StarRating(
            size: 25,
            starCount: 6,
            color: Colors.black54,
            rating:
                double.parse(widget._post.ratings[index]['rating'].toString()),
          ),
        ),
      );
      } if (_currentIndex == 1) {
        return ListTile(
        subtitle: Text(widget._post.comments[index]['id']),
        title: Text(widget._post.comments[index]['comment']),
      );
      } else {
        return Container();
      }
    }

    Widget _fullView() {
      // build full view
      if (_currentIndex == 0 || _currentIndex == 1) {
        return Container(
          height: 500,
          child: ListView.builder(
            itemCount: _currentIndex == 0 
              ? widget._post.ratings.length
              : widget._post.comments.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  _listTile(index),
                  Divider(height: 0, indent: 10, color: Colors.blueGrey[100]),
                ],
              );
            },
          ),
        );
      } else {
        return Container();
      }
    }

    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Expanded(
              // Like filter
              // index = 0
              child: GestureDetector(
            onTap: () {
              setState(() {
                if (_currentIndex == 0) {
                  _currentIndex = null;
                } else {
                  _currentIndex = 0;
                  // likes
                }
              });
            },
            child: Container(
              decoration: _currentIndex == 0
                  ? null
                  : BoxDecoration(
                      color: Color(0xFFECEFF1),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(10)),
                    ),
              child: Icon(
                Icons.star_border,
                size: 30,
                color: _currentIndex == 0 ? Colors.black : Colors.grey,
              ),
            ),
          )),
          Expanded(
              // comment filter
              // index = 1
              child: GestureDetector(
            onTap: () {
              setState(() {
                if (_currentIndex == 1) {
                  _currentIndex = null;
                } else {
                  _currentIndex = 1;
                  // filter for image posts
                }
              });
            },
            child: Container(
              decoration: _currentIndex == 1
                  ? null
                  : BoxDecoration(
                      color: Color(0xFFECEFF1),
                    ),
              child: Icon(
                Icons.comment,
                size: 30,
                color: _currentIndex == 1 ? Colors.black : Colors.grey,
              ),
            ),
          )),
        ]),
        SizedBox(height: 10),
        _fullView()
      ],
    );
  }

  Widget _starRating() {
    // the star rating function

    return Row(
      children: <Widget>[
        Expanded(child: Container()),
        Stack(
          children: <Widget>[
            StarRating(
              color: Colors.black54,
              borderColor: Colors.black54,
              size: 35,
              starCount: 6,
              rating: _averageRating,
              onRatingChanged: (rating) {
                setState(() {
                  // recalculate average rating
                });
              },
            ),
            StarRating(
              color: Colors.black,
              borderColor: Colors.black54,
              size: 35,
              starCount: 6,
              rating: _myRating,
              onRatingChanged: (rating) {
                setState(() {
                  this._myRating = rating;
                });
              },
            ),
          ],
        ),
        Expanded(child: Container()),
        Column(
          children: <Widget>[
            SizedBox(height: 15),
            Text('${widget._post.ratings.length} ratings'),
          ],
        ),
        SizedBox(width: 15),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // using the 'widget.displayCode' to determine what to render,
    // so that state can be managed for multiple widgets in the same place
    if (widget.displayCode == 1) {
      return _collectOrRecommend();
    }
    if (widget.displayCode == 2) {
      return _details();
    }
    if (widget.displayCode == 3) {
      return _starRating();
    }
  }
}
