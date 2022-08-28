import 'package:flutter/material.dart';

class myColors {
  static final Color primaryColor = Color(0XFFB7935F);
  static final Color detailsColor = Color.fromRGBO(228, 215, 197, 25);

  static final ThemeData myLightTheme = ThemeData(
      canvasColor: myColors.pageColor,
      primaryColor: pageColor,
      textTheme: TextTheme(
          headline6: TextStyle(
              fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w600),
          headline4: TextStyle(
              fontSize: 34, color: Colors.grey, fontWeight: FontWeight.w600)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Colors.black),
        selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.black),
        unselectedLabelStyle: TextStyle(fontSize: 16, color: Colors.white10),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      bottomAppBarColor: Colors.white,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          shadowColor: Colors.blue[300],
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 30)));
  static final Color pageColor = Color.fromRGBO(56, 21, 21, 188);
}
