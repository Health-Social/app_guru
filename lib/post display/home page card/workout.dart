import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

// Import Post Types
import '../../post types/workout_post.dart';

// Import Widgets
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';
import '../../widgets/post_elements/workout_post_badges.dart';

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
  double _rating = 3.5;

  Widget _userRating() {
    return StarRating(
      starCount: 5,
      size: 40,
      rating: _rating,
      borderColor: Colors.grey[900],
      color: Colors.grey[900],
      onRatingChanged: (rating) {
        setState(() {
          this._rating = rating;
        });
      },
    );
  }

  Widget _averageRating() {
    return StarRating(
      starCount: 5,
      size: 40,
      rating: 4,
      borderColor: Colors.transparent,
      color: Colors.cyan[200],
      onRatingChanged: (rating) {
        // setState(() {
        //   this._rating = rating;
        // });
      },
    );
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
                '4754 votes',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
              ),
            )
          ],
        )
      ],
    );
  }
}
