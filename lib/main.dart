import 'package:flight_tickets/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTheme = ThemeData(
      fontFamily: 'Oxygen',
      primaryColor: Colors.white,
      textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
          title: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.w600)));
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: HomePage(),
    );
  }
}
