import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Import Full Page
import '../post display/full post card/diet.dart';
import '../post display/full post card/text.dart';

// Import Post Types
import './../post types/diet_post.dart';
import './../post types/text_post.dart';

// Import Post Display Cards
import '../post display/home page card/diet.dart';
import '../post display/home page card/text.dart';

class HomePage extends StatefulWidget {
  // final ImagePost _imagePost;

  final List<dynamic> _posts;

  HomePage(this._posts);

  createState() => _HomePageState();
}

// custom page naviation
class ScaleRoute extends PageRouteBuilder {
  final Widget widget;
  ScaleRoute({this.widget})
      : super(pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondAnimation) {
          return widget;
        }, transitionsBuilder: (BuildContext context,
            Animation<double> animation,
            Animation<double> secondAnimation,
            Widget child) {
          return ScaleTransition(
            scale: Tween<double>(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(
                  parent: animation,
                  curve: Interval(
                    0.0,
                    1.0,
                    curve: Curves.fastOutSlowIn,
                  )),
            ),
            child: ScaleTransition(
              scale: Tween<double>(
                begin: 0,
                end: 1.0,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Interval(
                    0.00,
                    1.00,
                    curve: Curves.fastOutSlowIn,
                  ),
                ),
              ),
              child: child,
            ),
          );
        });
}

class _HomePageState extends State<HomePage> {
  Navigator _navigateToFullPost(BuildContext context, int index) {
    // navigate to full post page

    if (widget._posts[index] is TextPost) {
      // Navigation (only for Text posts)
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) =>
                  TextPostFull(widget._posts[index])));
    }
  }

  Widget _postCard(BuildContext context, int index) {
    // build the post card
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: _postContainer(context, index),
      elevation: 6.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    );
  }

  Widget _postContainer(BuildContext context, int index) {
    // return differnt types of posts
    if (widget._posts[index] is DietPost) {
      return DietPostHomePage(widget._posts[index]);
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
