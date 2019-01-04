import 'package:flutter/material.dart';

import './full_bio.dart';

class UserDetails {
  final String userId;
  final String userName; // must be unique?
  final String userEmail;
  final String userPassword;
  final String userProfilePicture;
  final String userBio;
  final FullBio userFullBio; // sub-type 
  final List<String> following; // list of user ID's that follow an account
  final List<String> followers;

  UserDetails({
    @required this.userId,
    @required this.userName,
    @required this.userEmail,
    @required this.userPassword,
    @required this.userProfilePicture,
    @required this.userBio,
    @required this.userFullBio,
    this.following,
    this.followers,
  });
}