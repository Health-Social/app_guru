import 'package:flutter/material.dart';

class Collection {
  final Color colour;
  final String title;
  final String category; // meal, beverage, workout, text
  final String description; // brief paragraph (200 chars) describing the collection
  final List<String> tags; // e.g. weight loss, carb clever etc

  Collection({
    @required this.colour,
    @required this.title,
    @required this.category,
    @required this.description,
    this.tags,
  });
}