import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/constants.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello! I'm Ashutosh, a software developer based in India.",
            style: TextStyle(
              fontSize: 16,
              color: Constants.slate,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'I am currently developing mobile apps using Flutter and have delivered 10+ projects in mobile and web. \nI also love to produce music beats, I invest sometime in learning and making beats using Fl Studio.',
            style: TextStyle(
              fontSize: 16,
              color: Constants.slate,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'I work as Software Developer at Innovaccer. I do some side projects to enhance my skills in mobile.',
            style: TextStyle(
              fontSize: 16,
              color: Constants.slate,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Some technologies which I have worked on are:",
            style: TextStyle(
              fontSize: 16,
              color: Constants.slate,
            ),
          ),
        ],
      ),
    );
  }
}
