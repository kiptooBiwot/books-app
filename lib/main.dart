import 'package:books_app/screens/books_listing.dart';
import 'package:books_app/theme/theme_data.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BooksApp());

class BooksApp extends StatefulWidget {
  const BooksApp({Key? key}) : super(key: key);

  @override
  State<BooksApp> createState() => _BooksAppState();
}

enum AppThemes { light, dark }

class _BooksAppState extends State<BooksApp> {
  var currentTheme = AppThemes.light;

  toggleDarkTheme() {
    setState(() {
      print('Changing State of theme');
      currentTheme =
          currentTheme == AppThemes.light ? AppThemes.dark : AppThemes.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books App',
      debugShowCheckedModeBanner: false,
      theme: currentTheme == AppThemes.light ? lightTheme : darkTheme,
      home: SafeArea(
        child: BooksListing(toggleDarkTheme),
      ),
    );
  }
}
