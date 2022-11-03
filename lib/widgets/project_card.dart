import 'package:flutter/material.dart';
import 'package:portfolio/data/projects.dart';

class ProjectCard extends StatelessWidget {
  final int index;
  const ProjectCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: <Widget>[
          Card(
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
                    projects[index].name,
                    style: const TextStyle(
                      fontSize: 44,
                      color: Color(0xff47455f),
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    projects[index].description,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Tech Used: ${projects[index].tech}',
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xff47455f),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
