import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
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
        ),
        SizedBox(
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
                  child: const Icon(FontAwesomeIcons.githubAlt)
                      .pOnly(left: width / 15)),
              InkWell(
                  onTap: () {
                    html.window.open(
                        'https://www.instagram.com/basnet.mausam/', 'new tab');
                  },
                  child: const Icon(FontAwesomeIcons.instagram)),
              InkWell(
                  onTap: () {
                    html.window.open(
                        'https://www.linkedin.com/in/mausam-basnet', 'new tab');
                  },
                  child: const Icon(FontAwesomeIcons.linkedin)
                      .pOnly(right: width / 15)),
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
                child: const Text(
                  "projects",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactPage()),
                  );
                },
                child: const Text(
                  "contact",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Text(
                "xxxxx",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    ).pOnly(top: 32, left: 32);
  }
}
