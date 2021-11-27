import 'package:books_app/screens/books_listing.dart';
import 'package:books_app/theme/theme_data.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BooksApp());

class BooksApp extends StatelessWidget {
  const BooksApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books App',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const SafeArea(
        child: BooksListing(),
      ),
    );
  }
}
