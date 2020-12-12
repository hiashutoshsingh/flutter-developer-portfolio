import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/constants.dart';
import 'package:flutter_developer_portfolio/sub_header.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SubHeader(
            number: '01.',
            heading: 'About me',
          ),
          SizedBox(
            height: 32,
          ),
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
            'I am currently developing mobile apps using Flutter and has delivered 10+ projects in mobile and web. \nI am currently working as Software Developer at Innovaccer and also do some side projects to enhance my skills in mobile.',
            style: TextStyle(
              fontSize: 16,
              color: Constants.slate,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'I also love to produce music beats, investing sometime in learning and making beats using Fl Studio.',
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
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _techItem('Flutter'),
                  SizedBox(
                    height: 12,
                  ),
                  _techItem('Android'),
                  SizedBox(
                    height: 12,
                  ),
                  _techItem('JavaScript'),
                ],
              ),
              SizedBox(
                width: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _techItem('Flutter-Web'),
                  SizedBox(
                    height: 12,
                  ),
                  _techItem('iOS'),
                  SizedBox(
                    height: 12,
                  ),
                  _techItem('React Native'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _techItem(String value) {
    return Row(
      children: [
        Icon(
          Icons.ac_unit_sharp,
          size: 16,
          color: Constants.green,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            color: Constants.slate,
          ),
        ),
      ],
    );
  }
}
