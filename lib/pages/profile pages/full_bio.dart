import 'package:flutter/material.dart';

class FullBioPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FullBioPageState();
  }
}

class FullBioPageState extends State<FullBioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text('Dynamic username',
              style: TextStyle(fontFamily: 'Comfortaa', fontSize: 20.0))),
      body: Center(
        child: Text('FULL BIO!'),
      ),
    );
  }
}
