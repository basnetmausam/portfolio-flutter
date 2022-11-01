import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
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
        SizedBox(
          width: width / 3,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Icon(FontAwesomeIcons.githubAlt),
              Icon(FontAwesomeIcons.instagram),
              Icon(FontAwesomeIcons.linkedin),
            ],
          ),
        ),
        SizedBox(
          width: width / 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "projects",
                style: TextStyle(fontSize: 18),
              ),
              const Text(
                "contact",
                style: TextStyle(fontSize: 18),
              ).px20(),
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