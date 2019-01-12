import 'package:flutter/material.dart';

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
  double _currentIndex = 0;
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

  Widget _iconView() {
    // Like and Drop Down Icons
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
          //  Icon(Icons.favorite_border, color: Colors.black87, size: 30.0),
          SizedBox(width: 12),
             Icon(Icons.local_dining, color: Colors.black87, size: 35.0),
           SizedBox(width: 35),
       //     _dropDownExpand(),
          ],
        ),
        //     Text('${widget._post.isFavourite.length} likes'),
      ],
    );
  }

  Widget _fullIconView() {
    // full drop down menu
    // row of buttons to filter for the types of posts
    return 
    //_dropDown ?
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
                  Icons.favorite_border,
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
            Expanded(
                // share
                // index = 3
                child: GestureDetector(
              onTap: () {
                setState(() {
                  if (_currentIndex == 3) {
                    _currentIndex = null;
                  } else {
                    _currentIndex = 3;
                    // filter for image posts
                  }
                });
              },
              child: Container(
                decoration: _currentIndex == 3
                    ? null
                    : BoxDecoration(
                        color: Color(0xFFECEFF1),
                      ),
                child: Icon(
                  Icons.share,
                  size: 30,
                  color: _currentIndex == 3 ? Colors.black : Colors.grey,
                ),
              ),
            )),
            Expanded(
                // collect
                // index = 4
                child: GestureDetector(
              onTap: () {
                setState(() {
                  if (_currentIndex == 4) {
                    _currentIndex = null;
                  } else {
                    _currentIndex = 4;
                    // collect post
                  }
                });
              },
              child: Container(
                decoration: _currentIndex == 4
                    ? null
                    : BoxDecoration(
                        color: Color(0xFFECEFF1),
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(10)),
                      ),
                child: Icon(
                  Icons.bookmark_border,
                  size: 30,
                  color: _currentIndex == 4 ? Colors.black : Colors.grey,
                ),
              ),
            )),
          ]);
      //  : Container();
  }

  @override
  Widget build(BuildContext context) {
    // using the 'widget.displayCode' to determine what to render,
    // so that state can be managed for multiple widgets in the same place
    if (widget.displayCode == 1) {
      return _iconView();
    }
    if (widget.displayCode == 2) {
      return _fullIconView();
    }
  }
}
