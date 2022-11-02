import 'package:flutter/material.dart';
import 'package:portfolio/pages/contact_page.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/project_page.dart';
import 'package:portfolio/widgets/nav_bar.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class SinglePage extends StatefulWidget {
  const SinglePage({Key? key}) : super(key: key);

  @override
  State<SinglePage> createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage> {
  // Controllers
  late ScrollController _scrollController;

  @override
  void initState() {
    // initialize scroll controllers
    _scrollController = ScrollController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebSmoothScroll(
        controller: _scrollController,
        scrollOffset: 100,
        animationDuration: 300,
        curve: Curves.easeInOutCirc,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _scrollController,
          child: Column(
            children: [
              Stack(
                children: [
                  NavBar(),
                  HomePage(),
                  ProjectPage(),
                  ContactPage(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
