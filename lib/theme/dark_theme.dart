import 'package:blossom_app/constant/constants.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.black,
    secondary: Colors.white,
    tertiary: kPrimaryColor,
    onPrimary: Colors.grey.shade200,
    onSecondary: Colors.grey.shade900,
  ),
  useMaterial3: true,
);
