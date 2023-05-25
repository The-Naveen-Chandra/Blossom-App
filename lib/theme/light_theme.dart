import 'package:flutter/material.dart';
import 'package:blossom_app/constant/constants.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Colors.white,
    primary: Colors.black,
    secondary: Colors.white,
    tertiary: kPrimaryColor,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
  ),
  useMaterial3: true,
);
