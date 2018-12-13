import 'package:flutter/material.dart';

// Commented out sections to be added later 

class TextPost {
  final String userId;
  final String userEmail;
  final String userName;
  final String userProfilePicture;
  final String userPassword;
  final String title;
  final String description;
  final String subTitle;
  final String tag;
  // location
  // usercomments
  // share each others posts???
  final bool isFavourite;
  final bool hasViewed;

  TextPost({
    @required this.userId,
    @required this.userEmail,
    @required this.userName,
    @required this.userProfilePicture,
    @required this.userPassword,
    @required this.title,
    @required this.description,
    @required this.subTitle,
    @required this.tag,
    this.isFavourite = false,
    this.hasViewed = false
  });
}

