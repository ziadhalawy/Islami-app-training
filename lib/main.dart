import 'package:flutter/material.dart';
import 'package:untitled1/Home%20Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami app',
      initialRoute: homeScreen.routeName,
      routes: {homeScreen.routeName: (_) => homeScreen()},
    );
  }
}
