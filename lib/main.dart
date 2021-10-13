import 'package:flutter/material.dart';
import 'screens/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: _title, home: BottomNavigation());
  }
}
