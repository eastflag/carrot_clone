import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

const int _blackPrimaryValue = 0xFF000000;
const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Radish App',
        theme: ThemeData(
            // primaryColor: Colors.white,
            primarySwatch: MaterialColor(0xFF4C6EF5, {
              50: Color(0xFFEDF2FF),
              100: Color(0xFFDBE4FF),
              200: Color(0xFFBAC8FF),
              300: Color(0xFF91A7FF),
              400: Color(0xFF748FFC),
              500: Color(0xFF5C7CFA),
              600: Color(0xFF4C6EF5),
              700: Color(0xFF4263EB),
              800: Color(0xFF3B5BDB),
              900: Color(0xFF364FC7),
            }),
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black87,
              // titleTextStyle: TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.w700),
              elevation: 2,
              // actionsIconTheme: IconThemeData(color: Colors.black),
            ),
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: HomeScreen());
  }
}
