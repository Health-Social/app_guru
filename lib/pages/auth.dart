import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// pages
import '../main.dart';

class AuthPage extends StatelessWidget {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<FirebaseUser> _signIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    FirebaseUser user = await _auth.signInWithGoogle(
      idToken: gSA.idToken,
      accessToken: gSA.accessToken,
    );
    print('user name: ${user.displayName}');

    return user;
  }

  void _signOut() {
    googleSignIn.signOut();
    print('user signed out');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: RaisedButton(
        child: Text('auth page'),
        onPressed: () =>
          _signIn().then((FirebaseUser user) => print(user)).catchError((error) => print(error))
          // Navigator.pushReplacement(context, 
          //   MaterialPageRoute(
          //     builder: (BuildContext context) =>
          //       MyApp()
          //   ));
  //      },
      ) ,),
    )
    ;
  } 
}