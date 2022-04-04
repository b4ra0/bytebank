import 'package:flutter/material.dart';

ThemeData buildThemeData() {
  return ThemeData(
    primaryColor: Colors.green[900],
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blueAccent[700],
      textTheme: ButtonTextTheme.primary,
    ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blueAccent[700]),
  );
}