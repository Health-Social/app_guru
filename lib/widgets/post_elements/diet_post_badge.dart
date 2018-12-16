import 'package:flutter/material.dart';

// Recipe 'R' Badge

class RecipeBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 65,
      child: Center(child: Text('recipe', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.green ))),
      decoration: BoxDecoration(
        border: Border.all(width: 3.5, color: Colors.green),
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xFFCCFF90)
      )
      );
  }
}

// Recipe Tags 

class RecipeBadgeCake extends StatelessWidget {
  // Cake Tag
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: 37,
      child: Center(child: Icon(Icons.cake, color: Colors.teal[200])),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.teal[200]),
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.teal[50]
      )
      );
  }
}


class RecipeBadgeFastfood extends StatelessWidget {
  // Fastfood  Tag
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: 37,
      child: Center(child: Icon(Icons.fastfood, color: Colors.teal[200])),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.teal[200]),
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.teal[50]
      )
      );
  }
}

class RecipeBadgeLocalDining extends StatelessWidget {
  // Local Dining Tag
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: 37,
      child: Center(child: Icon(Icons.local_dining, color: Colors.teal[200])),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.teal[200]),
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.teal[50]
      )
      );
  }
}