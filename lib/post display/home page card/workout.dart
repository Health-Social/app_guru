import 'package:flutter/material.dart';

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
  Widget _starRating() {
    return GestureDetector(
      // add gesture detector
      child:  Row(
        children: <Widget>[
          Icon(Icons.star, size: 50),
          Icon(Icons.star, size: 50),
          Icon(Icons.star, size: 50),
          Icon(Icons.star_half, size: 50),
          Icon(Icons.star_border, size: 50),
        ],
      ),
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
            Positioned(
              bottom: 5,
              right: 5,
              child: _starRating(),
            )
          ],
        ),
        SizedBox(height: 5),
        KeyMetricsBar(widget._post),
        SizedBox(height: 5),
      ],
    );
  }
}
