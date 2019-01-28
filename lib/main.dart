import 'package:flutter/material.dart';

// Import authentication pages
import './pages/authentication/root.dart';
import './pages/authentication/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cheese Cake',
      home: RootPage(auth: Auth()),
    );
  }
}
