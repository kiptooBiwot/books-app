import 'package:flutter/material.dart';

ThemeData get defaultTheme => ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      accentColor: Colors.lightBlueAccent,
      appBarTheme: const AppBarTheme(
        color: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
    );

ThemeData get lightTheme => ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blueGrey,
      accentColor: Colors.blueGrey[400],
    );

ThemeData get darkTheme => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.orange,
      accentColor: Colors.yellowAccent,
    );

ThemeData get appTextTheme => ThemeData(
      textTheme: const TextTheme(
        headline6: TextStyle(fontFamily: 'NanumGothic'),
      ),
    );
