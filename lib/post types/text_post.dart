import 'package:flutter/material.dart';

import '../users/user_details.dart';
import './collection.dart';
// Commented out sections to be added later 

class TextPost {
  final UserDetails userDetails;
  final String title;
  final String description;
  final String subTitle;
  final String tag;
  // location
  // usercomments
  // share each others posts???
  final bool isFavourite;
  final bool hasViewed;
  final Collection collection;

  TextPost({
    @required this.userDetails,
    @required this.title,
    @required this.description,
    @required this.subTitle,
    @required this.tag,
    this.isFavourite = false,
    this.hasViewed = false,
    this.collection,
  });
}

