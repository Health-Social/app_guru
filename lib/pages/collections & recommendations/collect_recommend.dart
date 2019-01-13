import 'package:flutter/material.dart';

// import widgets
import '../../widgets/ui_elements/my_appBar.dart';

class CollectRecommendPage extends StatefulWidget {
  _CollectRecommendPageState createState() => _CollectRecommendPageState();
}

class _CollectRecommendPageState extends State<CollectRecommendPage> {
  Widget _floatingButton() {
    // select button to display
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFECEFF1),
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title: Text(
            'Cheese Cake',
            style: TextStyle(
                color: Colors.black, fontFamily: 'Comfortaa', fontSize: 20.0),
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Text('collect', style: TextStyle(
                color: Colors.black, fontFamily: 'Comfortaa', fontSize: 17.0)),
              Text('recommend', style: TextStyle(
                color: Colors.black, fontFamily: 'Comfortaa', fontSize: 17.0)),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Text('collect');
                },
              ),
          ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Text('recommend');
                },
              ),
        ],),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // collect / recommend
          },
          label: Text('collect'),
          icon: Icon(Icons.send),
        ),
      ),
    );
  }
}
