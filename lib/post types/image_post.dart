import 'package:flutter/material.dart'; 

// Commented out sections to be added later 

class ImagePost {
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
  // user info, bio (Make extened BIO a TYPE)
  // location
  // usercomments
  // share each others posts???
  final Map<String, int> rating;
  final bool hasViewed;

  ImagePost({
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
    this.rating,
    this.hasViewed = false
  });
}