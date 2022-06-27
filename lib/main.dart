import 'package:flutter/material.dart';
import 'bottom_nav_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practices Project 1',
      home: BottomNavController(),
    );
  }
}
