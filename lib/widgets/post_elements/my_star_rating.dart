import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

import '../../post types/workout_post.dart';

class MyStarRating extends StatefulWidget{
  final WorkoutPost _post;

  MyStarRating(this._post);

  @override 
  State<StatefulWidget> createState() {
      return _MyStarRatingState();
    }
}

class _MyStarRatingState extends State<MyStarRating>{
  double _rating = 0;


   Widget _userRating() {
    // display the users vote
    return StarRating(
      starCount: 5,
      size: 40,
      rating: _rating,
      borderColor: Colors.grey[900],
      color: Colors.grey[900],
      onRatingChanged: (rating) {
        setState(() {
          // update post to include new vote ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !
          this._rating = rating;
        });
      },
    );
  }

  Widget _averageRating() {
    // calculate and display the average rating
    double _voteCount = widget._post.averageRating.length.toDouble();
    double _cummVote = widget._post.averageRating.values
        .reduce((sum, element) => sum + element);
    double _aveVote = _cummVote / _voteCount;
    return StarRating(
      starCount: 5,
      size: 40,
      rating: _aveVote,
      borderColor: Colors.transparent,
      color: Colors.lightBlue[600],
      onRatingChanged: (rating) {
        // setState(() {
        //   this._rating = rating;
        // });
      },
    );
  }

  String _voteCountString() {
    // return a String indicating how many people have voted
    int _vote = widget._post.averageRating.length;
    if (_vote == 1) {
      return _vote.toString() + ' vote';
    } else if (_vote > 1) {
      return _vote.toString() + ' votes';
    } else {
      return '';
    }
  }



  @override
  Widget build(BuildContext context) {
      return Stack(
          children: <Widget>[
            _averageRating(),
            _userRating(),
            Positioned(
              bottom: 3,
              right: 12,
              child: Text(
                _voteCountString(),
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
              ),
            )
          ],
        );
    }
}