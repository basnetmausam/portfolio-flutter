import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/hover_effect.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:portfolio/pages/contact_page.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/project_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        HoverBuilder(
          builder: (isHovered) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Container(
                width: (width / 3) - 32,
                height: 40,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/image.png",
                        ),
                        alignment: Alignment.bottomLeft,
                        fit: BoxFit.contain)),
              ),
            );
          },
        ),
        SizedBox(
          // color: Colors.amber,
          width: width / 3,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                  onTap: () {
                    html.window
                        .open('https://github.com/basnetmausam', 'new tab');
                  },
                  child: HoverBuilder(
                    builder: (isHovered) => Icon(
                      FontAwesomeIcons.githubAlt,
                      color: isHovered ? Colors.blueGrey : Colors.black,
                    ),
                  ).pOnly(left: (width < 600) ? 0 : width / 15)),
              InkWell(
                  onTap: () {
                    html.window.open(
                        'https://www.instagram.com/basnet.mausam/', 'new tab');
                  },
                  child: HoverBuilder(
                    builder: (isHovered) => Icon(
                      FontAwesomeIcons.instagram,
                      color: isHovered ? Colors.blueGrey : Colors.black,
                    ),
                  )),
              InkWell(
                  onTap: () {
                    html.window.open(
                        'https://www.linkedin.com/in/mausam-basnet', 'new tab');
                  },
                  child: HoverBuilder(
                    builder: (isHovered) => Icon(
                      FontAwesomeIcons.linkedin,
                      color: isHovered ? Colors.blueGrey : Colors.black,
                    ),
                  ).pOnly(right: (width < 600) ? 0 : width / 15)),
            ],
          ),
        ),
        SizedBox(
          width: width / 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProjectPage()),
                  );
                },
                child: HoverBuilder(
                  builder: (isHovered) => Text(
                    "projects",
                    style: TextStyle(
                        fontSize: 18,
                        color: isHovered ? Colors.blueGrey : Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactPage()),
                  );
                },
                child: HoverBuilder(
                  builder: (isHovered) => Text(
                    "contact",
                    style: TextStyle(
                        fontSize: 18,
                        color: isHovered ? Colors.blueGrey : Colors.black),
                  ),
                ),
              ),

              InkWell(
                onTap: () {
                  html.window.open(
                      'https://drive.google.com/file/d/1k-veGngFxkTaWmOrgEAAHFTpmN2orOLf/view?usp=sharing',
                      'new tab');
                },
                child: HoverBuilder(
                  builder: (isHovered) => Text(
                    "resume",
                    style: TextStyle(
                        fontSize: 18,
                        color: isHovered ? Colors.blueGrey : Colors.black),
                  ),
                ),
              ),

              // const Text(
              //   "xxxxx",
              //   style: TextStyle(fontSize: 18),
              // ),
            ],
          ),
        ),
      ],
    ).pOnly(top: 32, left: 32);
  }
}
