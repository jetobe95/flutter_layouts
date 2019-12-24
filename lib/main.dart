import 'package:flight_tickets/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static Color get primaryColor => Color(0xFF4864E6);
  static Color get accentColor => Color(0xFF4cd7f2);
  static Color get secondaryColor {
    return Color(0xfff2f5ff);
  }

  final appTheme = ThemeData(
    textTheme: TextTheme(
      display1: TextStyle(color: secondaryColor,fontSize: 20.0,fontWeight: FontWeight.w700),
        body1: TextStyle(color: secondaryColor),
        title: TextStyle(color: secondaryColor,fontSize: 25.0,fontWeight: FontWeight.w700),
      ),
      fontFamily: 'Oxygen',
      primaryColor: primaryColor,
      accentColor: accentColor,
      appBarTheme: AppBarTheme(
        color: primaryColor,
      ));
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
