import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var mausamImage = new AssetImage('mausam.PNG');

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
            child: Container(
              color: const Color(0xFFF0D0AA),
              height: height * 0.75,
              width: width / 3,
            ),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              child: NavBar(),
            ),
          ),
          Positioned(
              right: width / 2.6,
              bottom: height * 0.12,
              child: Image.asset(
                "assets/images/mausam.PNG",
                height: (width + height) * 0.24,
                // width: width * 0.25,
              )),
          Positioned(
              left: width * 0.03,
              bottom: height * 0.3,
              child: Text(
                "MAU\nSAM",
                style: TextStyle(
                    fontSize: (width + height) / 24,
                    // fontSize: height / 8.5,
                    // fontSize: 92,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'Outline Big'),
              )),
        ],
      ),
    );
  }
}
