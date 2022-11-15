import 'package:flutter/material.dart';
import 'package:portfolio/data/projects.dart';
import 'dart:html' as html;

class ProjectCard extends StatelessWidget {
  final int index;
  const ProjectCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        html.window.open(projects[index].link, 'new tab');
      },
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        color: const Color(0xFFF0D0AA),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                (height < width)
                    ? projects[index].name
                    : (projects[index].name ==
                            "Recommendation Letter Generator")
                        ? "Letter Generator"
                        : projects[index].name,
                style: TextStyle(
                  fontSize: (height > width) ? height / 30 : height / 20,
                  color: const Color(0xff47455f),
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                projects[index].description,
                style: TextStyle(
                  fontSize: (height > width) ? height / 50 : height / 40,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 32),
              Text(
                'Tech Used: ${projects[index].tech}',
                style: TextStyle(
                  fontSize: (height > width) ? height / 50 : height / 40,
                  color: const Color(0xff47455f),
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
