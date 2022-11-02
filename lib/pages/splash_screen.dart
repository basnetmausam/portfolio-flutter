import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:portfolio/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadWidget();
  }

  loadWidget() {
    var duration = const Duration(seconds: 3);
    return Timer(
        duration,
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              SpinKitFoldingCube(
                color: Color(0xFFF0D0AA),
                size: 30,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Hey Welcome to my wolrd 🏡\nMade with love with Flutter 💙",
                style: TextStyle(
                  color: Color.fromARGB(255, 40, 17, 17),
                  fontSize: 17,
                  letterSpacing: 2,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
