import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inter_clone/pages/home_page.dart';
import 'package:inter_clone/shared/app_theme_data.dart';

void main() {
  runApp(MaterialApp(
    theme: AppThemeData.appTheme,
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
  ));
}
