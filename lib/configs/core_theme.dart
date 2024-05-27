import 'package:flutter/material.dart';

const fontFamily = 'Poppins';

final themeLight = ThemeData(
  primaryColorLight: Color.fromARGB(255, 114, 33, 206),
  brightness: Brightness.light,
  primaryColor: Color.fromARGB(255, 94, 30, 167),
  highlightColor: Colors.black,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  backgroundColor: Colors.white,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(
    secondary: Colors.black,
    brightness: Brightness.light,
  ),
);

final themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: Color.fromARGB(255, 114, 33, 206),
  primaryColor: Color.fromARGB(255, 114, 33, 206),
  highlightColor: Color.fromARGB(255, 114, 33, 206),
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  backgroundColor: Colors.grey[800],
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey).copyWith(
    secondary: Color.fromARGB(255, 114, 33, 206),
    brightness: Brightness.dark,
  ),
);
