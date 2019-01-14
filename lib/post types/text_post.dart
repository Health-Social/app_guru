import 'package:flutter/material.dart';

import '../users/user_details.dart';
import './collection.dart';
// Commented out sections to be added later 

class TextPost {
  final UserDetails userDetails;
  final String title;
  final String description;
  List<Map<String, String>> comments;
  // location
  // share each others posts???
  List<Map> ratings;
  List<Map> hasViewed; // NA
  final Collection collection;
  final bool anonymous; // option to keep post anonymous

  TextPost({
    @required this.userDetails,
    @required this.title,
    @required this.description,
    this.hasViewed,
    this.ratings,
    this.comments,
    this.collection,
    this.anonymous = false,
  });
}

