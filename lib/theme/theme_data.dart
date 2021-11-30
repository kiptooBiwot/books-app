import 'package:flutter/material.dart';

ThemeData get defaultTheme => ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      accentColor: Colors.lightBlueAccent,
      fontFamily: 'NanumGothic',
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
      fontFamily: 'NanumGothic',
      accentColor: Colors.blueGrey[400],
    );

ThemeData get darkTheme => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.amber,
      fontFamily: 'NanumGothic',
      accentColor: Colors.yellowAccent,
    );
