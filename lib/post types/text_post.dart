import 'package:flutter/material.dart';

import '../users/user_details.dart';
import './collection.dart';
// Commented out sections to be added later 

class TextPost {
  final UserDetails userDetails;
  final String title;
  final String description;
  final List<Map<String, String>> comments;
  // location
  // share each others posts???
  final List<Map> ratings;
  final bool hasViewed; // NA
  final Collection collection;

  TextPost({
    @required this.userDetails,
    @required this.title,
    @required this.description,
    this.hasViewed = false,
    this.ratings,
    this.comments,
    this.collection,
  });
}

