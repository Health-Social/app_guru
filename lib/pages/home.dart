import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../post types/image_post.dart';


// Import Full Page
import '../post display/full post card/image.dart';
import '../post display/full post card/diet.dart';
import '../post display/full post card/text.dart';

// Import Post Types
import './../post types/image_post.dart';
import './../post types/workout_post.dart';
import './../post types/diet_post.dart';
import './../post types/text_post.dart';

// Import Post Display Cards
import '../post display/home page card/image.dart';
import '../post display/home page card/diet.dart';
import '../post display/home page card/workout.dart';
import '../post display/home page card/text.dart';

class HomePage extends StatefulWidget {
  // final ImagePost _imagePost;

  final List<dynamic> _posts;

  HomePage(this._posts);

   createState() => _HomePageState();
}



 class _HomePageState extends State<HomePage> {

  _navigateToFullPost(BuildContext context, int index) {
    // navigate to full post page
    
    if (widget._posts[index] is ImagePost) {
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>
        ImagePostFull(widget._posts[index])
      ));}

    if (widget._posts[index] is TextPost) {
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>
        TextPostFull(widget._posts[index])
      ));}

    if (widget._posts[index] is DietPost) {
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>
        DietPostFull(widget._posts[index])
      ));}

    if (widget._posts[index] is WorkoutPost) {
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>
        null // Workout full page
      ));}
  }

  Widget _postCard(BuildContext context, int index) {
    // build the post card
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child:  _postContainer(context, index),
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0)
      ),
    );
  }



  Widget _postContainer(BuildContext context, int index) {
    // return differnt types of posts
    if (widget._posts[index] is ImagePost) {
     return ImagePostHomePage(widget._posts[index]);
    } else if (widget._posts[index]  is DietPost) {
      return DietPostHomePage(widget._posts[index]);
    } else if (widget._posts[index] is WorkoutPost) {
      return WorkoutPostHomePage(widget._posts[index]);
    } else if (widget._posts[index] is TextPost) {
      return TextPostHomePage(widget._posts[index]);
    } else {
      return Text('other post');
      // other post types 
    } 
  }

  _postDisplay(BuildContext context, int index) {
    // sets up Gesture Detector
    return GestureDetector(
      onTap: () {
        _navigateToFullPost(context, index);
      },
      onDoubleTap: () {
        // implement like post
      },
      child: _postCard(context, index),
    );
  }




  @override
  Widget build(BuildContext context) {
    // final build method
    return ListView.builder(
      itemCount: widget._posts.length,
      itemBuilder: (BuildContext context, int index) {
        return _postDisplay(context, index);
      },
    );
  }
}

