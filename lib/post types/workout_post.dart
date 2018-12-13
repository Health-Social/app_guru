import 'package:flutter/material.dart';

// commented out sections are to be added later 

class WorkoutPost {
  final String userId;
  final String userEmail;
  final String userName;
  final String userProfilePicture;
  final String userPassword;
  final String imageUrl;
  final String imagePath;
  final String title;
  final String description;
  final String tag;
  final String bodyTag;
  // location;
  // usercomments
  // share each others posts???
  final bool isFavourite;
  final bool hasViewed;

  WorkoutPost({
    @required this.userId,
    @required this.userEmail,
    @required this.userName,
    @required this.userProfilePicture,
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