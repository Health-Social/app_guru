import 'package:flutter/material.dart';

//Page Imports
import './pages/home.dart';
import './pages/search.dart';
import './pages/upload.dart';
import './pages/notification.dart';
import './pages/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void _onTapNavigationBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _pageShown() {
    // which page to show
      if (_currentIndex == 0) {
        return  HomePage();
      }
      if (_currentIndex == 1) {
        return SearchPage();
      }
      if (_currentIndex == 2) {
        return UploadPage();
      }
      if (_currentIndex == 3) {
        return NotificationPage();
      } else {
        return ProfilePage();
      }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'health social',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Health Social'),
        ),
        body: _pageShown(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(
                    _currentIndex == 0
                        ? Icons.perm_media
                        : Icons.fitness_center,
                    color: Colors.pink)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(
                    _currentIndex == 1 ? Icons.search : Icons.fitness_center,
                    color: Colors.lightBlue)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(
                    _currentIndex == 2
                        ? Icons.camera_alt
                        : Icons.fitness_center,
                    color: Colors.orange)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(
                    _currentIndex == 3 ? Icons.favorite : Icons.fitness_center,
                    color: Colors.green)),
            BottomNavigationBarItem(
                title: Container(),
                icon: Icon(
                    _currentIndex == 4 ? Icons.person : Icons.fitness_center,
                    color: Colors.blueGrey))
          ],
          onTap: _onTapNavigationBar,
        ),
      ),
    );
  }
}
