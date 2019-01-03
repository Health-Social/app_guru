import 'package:flutter/material.dart';

// Import Post Types
import '../../post types/workout_post.dart';

// Import Widgets
import '../../widgets/post_elements/username_badge.dart';
import '../../widgets/post_elements/my_star_rating.dart';

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
              child: UsernameBadge(widget._post.userDetails.userName)),
          ],
        ),
        MyStarRating(widget._post),
      ],
    );
  }
}
