import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/project_page.dart';
import 'package:portfolio/widgets/nav_bar.dart';

import '../widgets/big_text.dart';
import '../widgets/triangle.dart';

import 'dart:html' as html;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                decoration: const BoxDecoration(
                    color: Color(0xFFF0D0AA),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: height * 0.75,
                width: width / 3,
              ),
            ),
          ),
          Positioned(
            top: (width < 600) ? 150 : height / 3,
            left: (width < 600) ? 50 : width / 1.55,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      '<Hello World/> This is Mausam Basnet',
                      textStyle: TextStyle(
                        fontSize: (height > width) ? height / 35 : height / 25,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    TypewriterAnimatedText(
                      'I am a Designer',
                      textStyle: TextStyle(
                        fontSize: (height > width) ? height / 35 : height / 25,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    TypewriterAnimatedText(
                      'I am a Developer',
                      textStyle: TextStyle(
                        fontSize: (height > width) ? height / 35 : height / 25,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                  // child: Text(
                  //   "<Hello World> I am Mausam Basnet",
                  //   style: TextStyle(
                  //     fontSize: (height > width) ? height / 35 : height / 28,
                  //     fontWeight: FontWeight.w100,
                  //   ),
                  // ),
                ),
                Text(
                  "\nCurrently I am enjoying Flutter and am looking forward to work in it to design, develop and maintain ios and android applications.",
                  style: TextStyle(
                    fontSize: (height > width) ? height / 50 : height / 40,
                  ),
                ),
                InkWell(
                  onTap: () {
                    html.window.open(
                        'https://drive.google.com/file/d/1Sp7AhGlB2PcdwEL6mHNudiblgoQY-2jE/view?usp=sharing',
                        'new tab');
                  },
                  child: const Text(
                    "\ndownload cv",
                    style: TextStyle(
                      fontSize: 16,
                      shadows: [
                        Shadow(color: Colors.black, offset: Offset(0, -5))
                      ],
                      color: Colors.transparent,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                    ),
                  ),
                ),
              ],
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
            right: width / 3.2,
            child: Container(
              width: width / 3,
              // width: (height > width) ? width / 3 : width / 5,
              height: height / 1.8,
              decoration: const BoxDecoration(
                // color: Color.fromARGB(57, 255, 193, 7),
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

          Positioned(
            right: 0,
            bottom: height * 0.07,
            child: RawMaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProjectPage()),
                );
              },
              child: CustomPaint(
                painter: TrianglePainter(
                  strokeColor: const Color(0xFFF0D0AA),
                  strokeWidth: 10,
                  paintingStyle: PaintingStyle.fill,
                ),
                child: const SizedBox(
                  height: 80,
                  width: 100,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
