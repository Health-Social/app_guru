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
  final double price;
  // location
  final List<Map> ratings;
  final List<Map<String, String>> comments;
  final List<String> hasViewed; // or just order chronologically
  // Collection
  final Collection collection;
  final bool meal;

  DietPost(
      {@required this.userDetails,
      @required this.benefits,
      @required this.ingredients,
      @required this.recipe,
      @required this.imageUrl,
      @required this.imagePath,
      @required this.meal,
      this.calories,
      this.minutes,
      this.price,
      this.ratings,
      this.comments,
      this.hasViewed,
      this.collection,
      });
}
