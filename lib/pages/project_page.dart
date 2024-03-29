import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:portfolio/pages/contact_page.dart';
import 'package:portfolio/widgets/nav_bar.dart';
import 'package:portfolio/widgets/project_card.dart';
import 'package:velocity_x/velocity_x.dart';

import '../data/projects.dart';
import '../widgets/big_text.dart';
import '../widgets/hover_effect.dart';
import '../widgets/triangle.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

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
            bottom: (height > width) ? height / 5 : 0,
            left: (height > width) ? width / 3 : width / 2.5,
            child: Stack(
              children: [
                SizedBox(
                  height: (height < width) ? height - 300 : height - 350,
                  width: (height > width) ? width * 0.66 : width * 0.6,
                  child: Hero(
                    tag: "brown",
                    child: Swiper(
                      itemCount: projects.length,
                      itemWidth: 610,
                      layout: SwiperLayout.STACK,
                      pagination: const SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                          activeSize: 15,
                          space: 8,
                          activeColor: Color.fromARGB(255, 234, 161, 77),
                        ),
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return ProjectCard(
                          index: index,
                        );
                      },
                    ).py24(),
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
            left: width * 0.03,
            bottom: height * 0.3,
            child: const BigText(
              text1: "PROJ",
              text2: "ECTS",
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
                              builder: (context) => const ContactPage()),
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
