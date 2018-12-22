import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

// Import Post Types
import '../../post types/workout_post.dart';

// Import Widgets
import '../../widgets/post_elements/profile_pic_circle.dart';

// DESCRIPTION:
// Workout Post Card

class WorkoutPostHomePage extends StatefulWidget {
  final WorkoutPost _post;
  final int _index;
  

  WorkoutPostHomePage(this._post, this._index);

  @override
  State<StatefulWidget> createState() {
    return _WorkoutProstHomePageState();
  }
}

class _WorkoutProstHomePageState extends State<WorkoutPostHomePage> {
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
    double _cummVote = widget._post.averageRating.values.reduce((sum, element) => sum + element);
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
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              child: Image(
                  image: AssetImage(
                    widget._post.imageUrl,
                  ),
                  color: Colors.transparent),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget._post.imageUrl),
                  )),
            ),
            Positioned(
                child: ProfilePicCircle(
                    widget._post.userDetails.userProfilePicture)),
          ],
        ),
        Stack(
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
        )
      ],
    );
  }
}
