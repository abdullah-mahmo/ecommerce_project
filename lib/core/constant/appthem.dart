import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeArbic = ThemeData(
  fontFamily: "Cairo-Light.ttf",
  textTheme: TextTheme(
    headlineLarge: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    headlineMedium: TextStyle(
      height: 2,
      color: ColorApp.grey,
      fontWeight: FontWeight.bold,
      fontSize: 17,
    ),
  ),
);

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlaywriteNZGuides-Regular",
  textTheme: TextTheme(   
    headlineLarge: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    headlineMedium: TextStyle(
      height: 2,
      color: ColorApp.grey,
      fontWeight: FontWeight.bold,
      fontSize: 17,
    ),
  ),
);
