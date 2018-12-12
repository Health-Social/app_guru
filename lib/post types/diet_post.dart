import 'package:flutter/material.dart';

// Commented out sections to be added later 

class DietPost {
  final String userId;
  final String userEmail;
  final String userPassword;
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

  DietPost({
    @required this.userId,
    @required this.userEmail,
    @required this.userPassword,
    @required this.imageUrl,
    @required this.imagePath,
    @required this.title,
    @required this.description,
    @required this.tag,
    @required this.bodyTag,
    this.isFavourite = false,
    this.hasViewed = false
  });
}