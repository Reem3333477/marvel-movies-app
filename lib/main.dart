import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MarvelMoviesApp());
}

class MarvelMoviesApp extends StatelessWidget {
  const MarvelMoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Marvel Movies App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      home: const HomePage(),
    );
  }
}