import 'package:flutter/material.dart';

// pages
import '../main.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: RaisedButton(
        child: Text('auth page'),
        onPressed: () {
          Navigator.pushReplacement(context, 
            MaterialPageRoute(
              builder: (BuildContext context) =>
                MyApp()
            ));
        },
      ) ,),
    )
    ;
  }
}