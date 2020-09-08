import 'package:flutter/material.dart';
import 'theme/style.dart';
import 'screens/home/home.dart';

void main() {
  runApp(Habitualize());
}

class Habitualize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habitualize',
      theme: appTheme(),
      home: Home(),
    );
  }
}