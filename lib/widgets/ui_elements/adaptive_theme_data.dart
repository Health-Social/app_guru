import 'package:flutter/material.dart';

// The Themes for each platform

final _iOSTheme = ThemeData(
    primarySwatch: Colors.blue,
    accentColor: Colors.blueGrey,
    buttonColor: Colors.lightBlue);

final _andriodTheme = ThemeData(
    primarySwatch: Colors.blue,
    accentColor: Colors.blueGrey,
    buttonColor: Colors.lightBlue);


ThemeData getAdaptiveThemeData(context) {
  return Theme.of(context).platform == TargetPlatform.iOS
    ? _iOSTheme
    :_andriodTheme;
}