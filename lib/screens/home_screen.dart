import 'package:flutter/material.dart';
import 'package:flutter_application/screens/profile_screen.dart';
import 'package:flutter_application/styles/theme.dart' as Style;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Text("Home"),
    Text("Search"),
    Text("Camera"),
    ProfileScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Style.Colors.mainColor,
          title: const Center(
            child: Text(
              'リーグ・オブ・レジェンズ',
              textAlign: TextAlign.center,
            ),
          )),
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Style.Colors.mainColor,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              backgroundColor: Style.Colors.mainColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.face),
              title: Text('Champions'),
              backgroundColor: Style.Colors.mainColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Person'),
              backgroundColor: Style.Colors.mainColor)
        ],
        onTap: _onItemTap,
      ),
    );
  }
}
