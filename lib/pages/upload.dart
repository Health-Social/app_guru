import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class UploadPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UploadPageState();
  }
}

class _UploadPageState extends State<UploadPage> with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    super.initState();
  }

  Widget _card(String text, IconData icon,
      {Color colour,
      Image image /*if implement background image*/} /*add navigator path*/) {
    // Widget that builds the cards displayed
    return ScaleTransition(
      scale: CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 1.0, curve: Curves.easeOut),
      ),
      child: GestureDetector(
        onTap: () {
          // navigate
        },
        onDoubleTap: () {
          //
        },
        onLongPress: () {
          // change colour
        },
        child: Card(
          color: colour,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          elevation: 20,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: Container(
            height: 190,
            width: 130,
            //
            // decoration: BoxDecoration(
            //   border: Border.all(color: colour),
            //   borderRadius: BorderRadius.circular(12.0),
            // ),
            //
            child: Column(
              children: <Widget>[
                Expanded(child: Container()),
                Center(child: Icon(icon, size: 100, color: Colors.white)),
                SizedBox(height: 8),
                Text(text,
                    style: TextStyle(
                        fontFamily: 'myriad-pro-light',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 20)),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(height: 40),
            Row(
              children: <Widget>[
                Expanded(child: Container()),
                Text('CREATE.',
                    style: TextStyle(
                        fontFamily: 'myriad-pro-bold',
                        fontWeight: FontWeight.w100,
                        fontSize: 60)),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 3),
            Row(
              children: <Widget>[
                Expanded(child: Container()),
                Text('and share',
                    style: TextStyle(
                        fontFamily: 'myriad-pro-light',
                        fontWeight: FontWeight.w900,
                        fontSize: 35)),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: <Widget>[
                Expanded(child: Container()),
                _card('Image/ video', Icons.image, colour: Colors.blue[600]),
                //SizedBox(width: 4),
                _card('Text', Icons.text_fields, colour: Colors.orange[600]),
                Expanded(child: Container()),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: <Widget>[
                Expanded(child: Container()),
                _card('workout', Icons.fitness_center,
                    colour: Colors.amber[400]),
                //SizedBox(width: 4),
                _card('Meal', Icons.local_dining,
                    colour: Colors.cyanAccent[400]),
                Expanded(child: Container()),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}

///
///
///
///
///
///
// OPTION B (MORE MINIMALISTIC)

// import 'package:flutter/material.dart';

// class UploadPage extends StatelessWidget {

//   Widget _card(String text, IconData icon, {Color colour, Image image/*if implement background image*/ } /*add navigator path*/) {
//     return GestureDetector(
//         onTap: () {
//           // navigate
//         },
//         onDoubleTap: () {
//           //
//         },
//         onLongPress: () {
//           // change colour
//         },
//         child: Card(
//           color: Colors.white70,
//           margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//           elevation: 20,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
//           child: Container(
//             height: 190,
//             width: 130,
//             //
//             decoration: BoxDecoration(
//               border: Border.all(color: colour),
//               borderRadius: BorderRadius.circular(12.0),
//             ),
//             //
//             child: Column(
//               children: <Widget>[
//                 Expanded(child: Container()),
//                 Center(
//                     child: Icon(icon, size: 100, color: colour)),
//                 SizedBox(height: 8),
//                 Text(text,
//                     style: TextStyle(
//                         fontFamily: 'myriad-pro-light',
//                         fontWeight: FontWeight.w600,
//                         color: colour,
//                         fontSize: 20)),
//                 SizedBox(height: 20),
//               ],
//             ),
//           ),
//         ),
//       );
//     }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           SizedBox(height: 80),
//           Row(
//             children: <Widget>[
//               Expanded(child: Container()),
//               Text('CREATE.',
//                   style: TextStyle(
//                       fontFamily: 'myriad-pro-bold',
//                       fontWeight: FontWeight.w100,
//                       fontSize: 60)),
//               SizedBox(width: 20),
//             ],
//           ),
//           SizedBox(height: 3),
//           Row(
//             children: <Widget>[
//               Expanded(child: Container()),
//               Text('and share',
//                   style: TextStyle(
//                       fontFamily: 'myriad-pro-light',
//                       fontWeight: FontWeight.w900,
//                       fontSize: 35)),
//               SizedBox(width: 20),
//             ],
//           ),
//           SizedBox(height: 40),
//           Row(
//             children: <Widget>[
//               Expanded(child: Container()),
//               _card('Image/ video', Icons.image, colour: Colors.blue[600]),
//               //SizedBox(width: 4),
//               _card('Text', Icons.text_fields, colour: Colors.orange[600]),
//               Expanded(child: Container()),
//             ],
//           ),
//           SizedBox(height: 15),
//           Row(
//             children: <Widget>[
//               Expanded(child: Container()),
//               _card('workout', Icons.fitness_center, colour: Colors.amber[400]),
//               //SizedBox(width: 4),
//               _card('Text', Icons.local_dining, colour: Colors.cyanAccent[400]),
//               Expanded(child: Container()),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
