import 'package:flutter/material.dart';

// pages
import '../home.dart';
import '../../main.dart';

// types
import '../../users/user_details.dart';
import '../../post types/collection.dart';
import '../../users/full_bio.dart';
import '../../post types/text_post.dart';

// widgets
import '../../widgets/post_elements/anonymous.dart';

class TextUploadPage extends StatefulWidget {
  final Color _colour;
  final Function addPost;

  TextUploadPage(this._colour, this.addPost);

  _TextUploadPageState createState() => _TextUploadPageState();
}

class _TextUploadPageState extends State<TextUploadPage> {
  String _title;
  String _description;
  bool _anon = false;
  String _tag = 'Tag could be for data collection/structure, UI';

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
      category: 'Meals');

  _titleFormField(String _text, double _textSize) {
    // Text field (function and design)
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        onChanged: (text) {
          setState(() {
            _title = text;
          });
        },
        // validator: (value) {
        //   if (value.isEmpty) {
        //     return 'please enter a title';
        //   }
        // },
        maxLength: 20,
        // cursorColor: Colors.grey,
        //  cursorWidth: 1,
        decoration: InputDecoration(
            labelText: _text,
            labelStyle: TextStyle(
              fontSize: _textSize,
              color: Colors.grey,
            )),
      ),
    );
  }

  descriptionTextField() {
    // Text field (function and design)
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        maxLines: 10,
        onChanged: (text) {
          setState(() {
            _description = text;
          });
        },
        cursorColor: Colors.grey,
        cursorWidth: 1,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: widget._colour)),
            hintText: 'share your story',
            hintStyle: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            )),
      ),
    );
  }

  Widget _postButton() {
    return Container(
      padding: EdgeInsets.all(20),
      child: RaisedButton(
        onPressed: () {
          // create the new post
          TextPost _newPost = TextPost(
              title: _title,
              description: _description,
              userDetails: _userDetails,
              anonymous: _anon);
          print(_newPost);
          // add post to list
          widget.addPost(_newPost);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext context) => MyApp()));
        },
        color: widget._colour,
        child: Text('post', style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget _anonSwitch() {
    // switch to make anonymous
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            AnonymousTag(),
            Switch(
              onChanged: (anon) {
                setState(() {
                  _anon = anon;
                });
              },
              value: _anon,
              activeColor: widget._colour,
            ),
            Expanded(child: Container()),
          ],
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 15),
            Text('make this post anonymous',
                style: TextStyle(color: Colors.grey[600])),
            Expanded(child: Container()),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // styling
        decoration: BoxDecoration(
          color: widget._colour,
        ),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.92,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Form(
              child: ListView(children: [
                _titleFormField('Title', 20),
                SizedBox(height: 10),
                _anonSwitch(),
                SizedBox(height: 30),
                descriptionTextField(),
                SizedBox(height: 10),
                _postButton(),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
