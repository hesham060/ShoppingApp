import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shoppingapp/shared/components/constants.dart';

ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.light),
      backgroundColor: Colors.black,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedItemColor: color,
        elevation: 20,
        backgroundColor: Colors.black),
    fontFamily: 'jannah2',
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: HexColor('#33d9b2')),
  );
ThemeData lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor:HexColor('#33d9b2'),
        statusBarIconBrightness: Brightness.light),
    backgroundColor: color,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: HexColor('#33d9b2'),
    elevation: 20,
  ),
  fontFamily: 'jannah',
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: HexColor('#33d9b2')),
);
