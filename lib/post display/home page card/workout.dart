import 'package:flutter/material.dart';

// Import Post Types
import '../../post types/workout_post.dart';

// Import Widgets
import '../../widgets/post_elements/post_title.dart';
import '../../widgets/post_elements/profile_pic_circle.dart';
import '../../widgets/post_elements/workout_post_badges.dart';

// DESCRIPTION:
// Workout Post Card

class WorkoutPostHomePage extends StatelessWidget {
  final WorkoutPost _post;

  WorkoutPostHomePage(this._post);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
                // Image
                child: Image.asset(_post.imageUrl),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1.5))),
            Container(
                // Profile Picture
                alignment: Alignment.topLeft,
                child: ProfilePicCircle(_post.userDetails.userProfilePicture)),
            Container(
                // title
                margin: EdgeInsets.only(top: 15.0, right: 15.0),
                alignment: Alignment.topRight,
                child: PostTitle(_post.title)),
            Positioned(
                // Badge
                bottom: 5,
                right: 15,
                child: WorkoutBadge()),
          ],
        ),
        WorkoutSubBar(_post) 
        // SizedBox(height: 15),
        // Container(
        //   height: 50,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       WorkoutBadge1(),
        //       SizedBox(width: 30),
        //       WorkoutBadge2(),
        //       SizedBox(width: 30),
        //       WorkoutBadge3(),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
