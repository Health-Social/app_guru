import 'package:flutter/material.dart';

import '../users/user_details.dart';
import './collection.dart';

// Commented out sections to be added later

class DietPost {
  final UserDetails userDetails;
  final List<String> benefits;
  final List<String> ingredients;
  final String recipe;
  final double calories;
  final double minutes;
  final String imageUrl;
  final String imagePath;
  // final String title;
  // final String description;
  // final String tag;
  final String bodyTag;
  final double price;
  // location
  // usercomments
  // share each others posts???
  final List<String> isFavourite;
  final List<Map<String, String>> comments;
  final List<String> hasViewed; // or just order chronologically
  // Collection
  final Collection collection;

  DietPost(
      {@required this.userDetails,
      @required this.benefits,
      @required this.ingredients,
      @required this.recipe,
      @required this.imageUrl,
      @required this.imagePath,
      @required this.bodyTag,
      this.calories,
      this.minutes,
      this.price,
      this.isFavourite,
      this.comments,
      this.hasViewed,
      this.collection});
}
