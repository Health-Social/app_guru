import 'package:flutter/material.dart';

// types
import '../../users/user_details.dart';
import '../../post types/collection.dart';
import '../../users/full_bio.dart';

class TextUploadPage extends StatefulWidget {
  Color _colour;

  TextUploadPage(this._colour);

  _TextUploadPageState createState() => _TextUploadPageState();
}

class _TextUploadPageState extends State<TextUploadPage> {
  String _title;
  String _subTitle;
  String _description;
  String _tag;
  UserDetails _userDetails = UserDetails(
      userId: '@ZachWolpe87',
  userEmail: 'dummy@dummy.com',
  userName: 'Zach Wolpe',
  userProfilePicture: 'assets/images/profile_pic2.jpg',
  userPassword: 'dummy password',
  userBio: '22 year old South African, staying healthy',
  userFullBio: FullBio(title: 'full bio in hrerre'),
  );
  // how to get existing collections?
  Collection _collection = Collection(
    colour: Colors.amber[800],
    title: 'Burgers',
    tags: ['cheat meal', 'enjoy life'],
    description: 'sometimes you have to let go & enjoy a balance',
    category: 'Meals'
  );





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // styling
        decoration: BoxDecoration(
          color: widget._colour,
        ),
        child: Center(child: Container(
          height: MediaQuery.of(context).size.height * 0.92,
          width: MediaQuery.of(context).size.width * 0.92,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          child: // Add Form Field
           ListView(
            
          ),
        ),),
      ),
    );
  }
}