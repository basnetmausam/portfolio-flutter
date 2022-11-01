import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/bigText.dart';
import 'package:portfolio/widgets/nav_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});

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

          Positioned(
            right: width / 4.5,
            bottom: 0,
            child: Container(
              color: const Color(0xFFF0D0AA),
              height: height * 0.75,
              width: width / 1.7,
              child: Container(
                color: Colors.green,
                child: Column(
                  children: [
                    const Text(
                      "Get in touch",
                      style: TextStyle(
                        fontSize: 48,
                      ),
                    ).pOnly(bottom: 32),
                    Container(
                      color: Colors.amber,
                      child: Column(
                        children: [
                          Container(
                            color: Colors.red,
                            child: Row(
                              children: [
                                const Icon(Icons.mail_outlined).px12(),
                                const Text(
                                  "mausambasnet59@gmail.com",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.brown,
                            child: Row(
                              children: [
                                const Icon(Icons.location_city_outlined).px12(),
                                const Text(
                                  "Pulchowk, Lalitpur",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.phone_android_outlined).px12(),
                              const Text(
                                "+977 9868049680",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
            left: width * 0.03,
            bottom: height * 0.3,
            child: const BigText(
              text1: "Contact",
              text2: "Me",
            ),
          ),
        ],
      ),
    );
  }
}
