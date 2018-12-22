import 'package:flutter/material.dart';

import '../users/user_details.dart';

// commented out sections are to be added later 

class WorkoutPost {
  final UserDetails userDetails;
  final String imageUrl;
  final String imagePath;
  final String title;
  final String description;
  final String tag;
  final String bodyTag;
  // location;
  // usercomments
  // share each others posts???
  final Map<String, double> averageRating;
  final bool hasViewed;

  WorkoutPost({
    @required this.userDetails,
    @required this.imageUrl,
    @required this.imagePath,
    @required this.title,
    @required this.description,
    @required this.tag,
    @required this.bodyTag,
    this.averageRating,
    this.hasViewed = false
  });
}