import 'package:flutter/material.dart';
import 'package:untitled1/Colors.dart';
import 'package:untitled1/Home%20Screen.dart';
import 'package:untitled1/Home/Quran/sura_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myColors.myLightTheme,
      title: 'Islami app',
      initialRoute: homeScreen.routeName,
      routes: {
        homeScreen.routeName: (_) => homeScreen(),
        suraDetails.routeName: (_) => suraDetails()
      },
    );
  }
}
