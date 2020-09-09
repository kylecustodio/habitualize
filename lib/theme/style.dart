import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: Colors.teal[100],
    accentColor: Colors.red[100],

    fontFamily: 'Quicksand',
    
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}