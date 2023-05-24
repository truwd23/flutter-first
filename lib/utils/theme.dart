import 'package:flutter/material.dart';

class CAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.grey,
    primaryColorDark: Colors.black,
    primarySwatch: Colors.blue,
    textTheme: TextTheme(),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey,
    primarySwatch: Colors.blue,
    primaryColorDark: Colors.black,
    textTheme: TextTheme(),
  );
}
