// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blue,
      appBarTheme: const AppBarTheme(color: Colors.black),
      textTheme: Theme.of(context).textTheme);
  static ThemeData darktheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
