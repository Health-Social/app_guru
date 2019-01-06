import 'package:flutter/material.dart';

import '../users/user_details.dart';

// Commented out sections to be added later

class DietPost {
  final UserDetails userDetails;
  final List<String> benefits;
  final List<String> ingredients;
  final double calories;
  final double minutes;
  final String recipe;
  final String imageUrl;
  final String imagePath;
  final String title;
  final String description;
  final String tag;
  final String bodyTag;
  // location
  // usercomments
  // share each others posts???
  final List<String> isFavourite;
  final List<Map<String, String>> comments;
  final List<String> hasViewed;
  // Collection
  final Map<String, dynamic> collection;

  DietPost(
      {@required this.userDetails,
      @required this.calories,
      @required this.minutes,
      @required this.benefits,
      @required this.ingredients,
      @required this.recipe,
      @required this.imageUrl,
      @required this.imagePath,
      @required this.title,
      @required this.description,
      @required this.tag,
      @required this.bodyTag,
      this.isFavourite,
      this.comments,
      this.hasViewed,
      this.collection});
}
