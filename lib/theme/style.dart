import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: Colors.grey[50],
    accentColor: Colors.teal[100],

    fontFamily: 'Montserrat',
    
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),

    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey[200],
      filled: true,
      isDense: true,
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide.none
      ),
    )
  );
}