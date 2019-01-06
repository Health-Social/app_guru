import 'package:flutter/material.dart';

class ProfilePicCircle extends StatelessWidget {
  final String profilePicture;

  ProfilePicCircle(this.profilePicture);

  @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: (){
          // go to profile
        },
        child: Container(
          margin: EdgeInsets.all(15.0),
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
           borderRadius: BorderRadius.circular(100),
           image: DecorationImage(
             fit: BoxFit.cover,
             image: AssetImage(profilePicture)
           )
        ),
      ),
      );}
}

