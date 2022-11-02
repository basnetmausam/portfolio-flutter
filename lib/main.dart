import 'package:flutter/material.dart';
import 'package:portfolio/pages/single_page.dart';
import 'package:portfolio/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mausam Basnet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context)
              .textTheme
              .apply(fontFamily: 'Apple LiGothic Medium')),
      home: const SplashScreen(),
    );
  }
}

/// Example Text

