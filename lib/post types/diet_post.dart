import 'package:flutter/material.dart';

import '../users/user_details.dart';

// Commented out sections to be added later

class DietPost {
  final UserDetails userDetails;
  final List<String> benefits;
  final List<String> ingredients;
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
  final bool isFavourite;
  final bool hasViewed;

  DietPost(
      {@required this.userDetails,
      @required this.benefits,
      @required this.ingredients,
      @required this.recipe,
      @required this.imageUrl,
      @required this.imagePath,
      @required this.title,
      @required this.description,
      @required this.tag,
      @required this.bodyTag,
      this.isFavourite = false,
      this.hasViewed = false});
}
