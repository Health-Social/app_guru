import 'package:flutter/material.dart';

// Recipe 'R' Badge

class WorkoutBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 65,
      child: Center(child: Text('workout', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.lightBlue[800] ))),
      decoration: BoxDecoration(
        border: Border.all(width: 3.5, color: Colors.lightBlue[800]),
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.lightBlue[200]
      )
      );
  }
}

// Recipe Tags 

class WorkoutBadge1 extends StatelessWidget {
  // 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: 37,
      child: Center(child: Icon(Icons.fitness_center)),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.grey[600]),
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey[300]
      )
      );
  }
}


class WorkoutBadge2 extends StatelessWidget {
  // Fastfood  Tag
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: 37,
      child: Center(child: Icon(Icons.fingerprint)),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.grey[600]),
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey[300]
      )
      );
  }
}

class WorkoutBadge3 extends StatelessWidget {
  // Local Dining Tag
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: 37,
      child: Center(child: Icon(Icons.flash_on)),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.grey[600]),
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey[300]
      )
      );
  }
}