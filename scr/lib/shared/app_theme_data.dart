import 'package:flutter/material.dart';

class AppThemeData {
  static const Color mainColor = Color.fromRGBO(255, 122, 0, 1);
  static const Color mainColorTransparent = Color.fromRGBO(255, 122, 0, 0.3);

  static ThemeData appTheme = ThemeData(
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
              overlayColor:
                  MaterialStateProperty.all(AppThemeData.mainColorTransparent),
              foregroundColor: MaterialStateProperty.all(Colors.black))),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(mainColor),
              overlayColor: MaterialStateProperty.all(mainColorTransparent),
              padding: MaterialStateProperty.all(EdgeInsets.zero))),
      iconTheme: const IconThemeData(color: mainColor));
}
