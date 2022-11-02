import 'package:flutter/material.dart';
import 'package:portfolio/widgets/nav_bar.dart';

import '../widgets/bigText.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          // Max Size
          Container(
            color: const Color(0xFFFFF1C5),
          ),
          Container(
            color: Colors.white,
            height: 100,
            width: width,
          ),
          Container(
            color: Colors.white,
            height: height,
            width: width * 0.05,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: height * 0.12,
              width: width * 0.7,
              color: Colors.white,
            ),
          ),
          Positioned(
            right: width / 3,
            child: Hero(
              tag: "brown",
              child: Container(
                color: const Color(0xFFF0D0AA),
                height: height * 0.75,
                width: width / 3,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              child: NavBar(),
            ),
          ),
          Positioned(
            bottom: height * 0.12,
            left: width * 0.415,
            child: Container(
              width: (height > width) ? width / 3 : width / 5,
              height: height / 1.8,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/mausam.PNG",
                    ),
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.contain),
              ),
            ),
          ),
          Positioned(
            left: width * 0.03,
            bottom: height * 0.3,
            child: const BigText(
              text1: "MAU",
              text2: "SAM",
            ),
          ),
        ],
      ),
    );
  }
}
