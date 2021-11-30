import 'package:books_app/screens/books_listing.dart';
import 'package:books_app/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const BooksApp());

class BooksApp extends StatefulWidget {
  const BooksApp({Key? key}) : super(key: key);

  @override
  State<BooksApp> createState() => _BooksAppState();
}

enum AppThemes { light, dark }

class _BooksAppState extends State<BooksApp> {
  var currentTheme = AppThemes.light;

  void loadActiveTheme(BuildContext context) async {
    // Get settings stored in the shared preferences
    var sharedPrefs = await SharedPreferences.getInstance();

    // If themeId key is null(not set), return default theme

    int themeId = sharedPrefs.getInt('theme_id') ?? AppThemes.light.index;

    setState(() {
      currentTheme = AppThemes.values[themeId];
    });
  }

  @override
  void initState() {
    super.initState();

    // Load theme from sharedPreferences
    loadActiveTheme(context);
  }

  toggleDarkTheme() {
    setState(() {
      // currentTheme = AppThemes.values[themeId];
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
