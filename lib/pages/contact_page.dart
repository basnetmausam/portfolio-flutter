import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portfolio/pages/home_page.dart';

import 'package:portfolio/widgets/big_text.dart';
import 'package:portfolio/widgets/nav_bar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/hover_effect.dart';
import '../widgets/triangle.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

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
            right: (width < 900) ? 0 : width / 5,
            bottom: 0,
            child: Stack(
              children: [
                Hero(
                  tag: "brown",
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFF0D0AA),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    height: height * 0.75,
                    width: (width < 900) ? width / 2 : width / 2.75,
                  ),
                ),
                SizedBox(
                  width: (width < 900) ? width / 2 : width / 2.75,
                  // color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get in touch",
                        style: TextStyle(
                          fontSize: (width > height)
                              ? (height * width) * 0.00005
                              : 30,
                          shadows: const [
                            Shadow(color: Colors.black, offset: Offset(0, -5))
                          ],
                          color: const Color.fromARGB(0, 40, 20, 20),
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                        ),
                      ).pOnly(bottom: height / 15, top: height / 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(Icons.mail_outlined).pOnly(right: 16),
                          Text(
                            "mausambasnet59@gmail.com",
                            style: TextStyle(fontSize: (width < 900) ? 17 : 20),
                          ),
                        ],
                      ).pOnly(left: width / 18, bottom: height / 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(Icons.location_city_outlined)
                              .pOnly(right: 16),
                          const Text(
                            "Pulchowk, Lalitpur",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ).pOnly(left: width / 18, bottom: height / 30),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(Icons.phone_android_outlined)
                              .pOnly(right: 16),
                          const Text(
                            "+977 9868049680",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ).pOnly(left: width / 18, bottom: height / 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Text(
          //       "Get in touch",
          //       style: TextStyle(
          //         fontSize:
          //             (width > height) ? (height * width) * 0.00005 : 32,
          //         shadows: const [
          //           Shadow(color: Colors.black, offset: Offset(0, -5))
          //         ],
          //         color: Colors.transparent,
          //         decoration: TextDecoration.underline,
          //         decorationColor: Colors.black,
          //       ),
          //     ).pOnly(bottom: height / 15),
          //     Row(
          //       crossAxisAlignment: CrossAxisAlignment.end,
          //       children: [
          //         const Icon(Icons.mail_outlined).pOnly(right: 16),
          //         const Text(
          //           "mausambasnet59@gmail.com",
          //           style: TextStyle(fontSize: 20),
          //         ),
          //       ],
          //     ).pOnly(left: width / 18, bottom: height / 30),
          //     Row(
          //       crossAxisAlignment: CrossAxisAlignment.end,
          //       children: [
          //         const Icon(Icons.location_city_outlined).pOnly(right: 16),
          //         const Text(
          //           "Pulchowk, Lalitpur",
          //           style: TextStyle(fontSize: 20),
          //         ),
          //       ],
          //     ).pOnly(left: width / 18, bottom: height / 30),
          //     Row(
          //       crossAxisAlignment: CrossAxisAlignment.end,
          //       children: [
          //         const Icon(Icons.phone_android_outlined).pOnly(right: 16),
          //         const Text(
          //           "+977 9868049680",
          //           style: TextStyle(fontSize: 20),
          //         ),
          //       ],
          //     ).pOnly(left: width / 18, bottom: height / 30),
          //   ],
          // ),

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

          Positioned(
            right: 20,
            bottom: height * 0.115,
            child: HoverBuilder(
                builder: (isHovered) => IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      icon: Icon(
                        Ionicons.play_skip_forward_outline,
                        size: 50,
                        color: isHovered ? Colors.blueGrey : Colors.black,
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
