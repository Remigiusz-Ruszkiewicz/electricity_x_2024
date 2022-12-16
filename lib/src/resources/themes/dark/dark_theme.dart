import 'package:electricity_x_2024/src/resources/themes/custom/custom_colors.dart';
import 'package:electricity_x_2024/src/resources/themes/custom/custom_sizes.dart';
import 'package:electricity_x_2024/src/resources/themes/custom/custom_text_styles.dart';
import 'package:electricity_x_2024/src/resources/themes/theme_data_extensions.dart';
import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color.fromRGBO(63, 62, 62, 1),
  textTheme: const TextTheme(
    headline1: TextStyle(color: Colors.white),
    headline2: TextStyle(color: Colors.white),
    headline3: TextStyle(color: Colors.white),
    headline4: TextStyle(color: Colors.white),
    overline: TextStyle(color: Colors.white),
    bodyText1: TextStyle(color: Colors.white),
    bodyText2: TextStyle(color: Colors.white),
    subtitle1: TextStyle(color: Colors.white),
    subtitle2: TextStyle(color: Colors.white),
    caption: TextStyle(color: Colors.white),
  ),
)
  ..addCustomColors(CustomColors())
  ..addCustomSizes(CustomSizes())
  ..addCustomTextDecoration(CustomTextStyles());
