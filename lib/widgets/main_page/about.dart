import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';
import 'package:flutter_developer_portfolio/widgets/sub_header.dart';

import '../../utils/common_functions.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  BlendMode _blendMode;

  @override
  void initState() {
    super.initState();
    _blendMode = BlendMode.modulate;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// todo move all contents to constants
                  Text(
                    "Hello! I'm Ashutosh, a software developer based in India.",
                    style: TextStyle(
                      fontSize: CommonFunction.isApp(context) ? 18 : 16,
                      color: Constants.slate,
                      fontFamily: 'FiraSans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'I am currently developing mobile apps using Flutter and has delivered 10+ projects in mobile and web. \nI am currently working as Software Developer at Innovaccer and also do some side projects to enhance my skills in mobile.',
                    style: TextStyle(
                      fontSize: CommonFunction.isApp(context) ? 18 : 16,
                      color: Constants.slate,
                      fontFamily: 'FiraSans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'I also love to produce music beats, investing sometime in learning and making beats using Fl Studio.',
                    style: TextStyle(
                      fontSize: CommonFunction.isApp(context) ? 18 : 16,
                      color: Constants.slate,
                      fontFamily: 'FiraSans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Some technologies which I have worked on are:",
                    style: TextStyle(
                      fontSize: CommonFunction.isApp(context) ? 18 : 16,
                      color: Constants.slate,
                      fontFamily: 'FiraSans',
                      fontWeight: FontWeight.w400,
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
                          _techItem('Flutter', context),
                          SizedBox(
                            height: 12,
                          ),
                          _techItem('Android', context),
                          SizedBox(
                            height: 12,
                          ),
                          _techItem('JavaScript', context),
                        ],
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _techItem('Flutter-Web', context),
                          SizedBox(
                            height: 12,
                          ),
                          _techItem('iOS', context),
                          SizedBox(
                            height: 12,
                          ),
                          _techItem('React Native', context),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: InkWell(
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {},
                onHover: (val) {
                  if (val) {
                    setState(() {
                      _blendMode = BlendMode.dstOver;
                    });
                  } else {
                    setState(() {
                      _blendMode = BlendMode.modulate;
                    });
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ) +
                      EdgeInsets.only(
                        bottom: 32,
                      ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(
                      "asset/profile.jpg",
                      colorBlendMode: _blendMode,
                      color: Constants.green,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _techItem(String value, BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.ac_unit_sharp,
          size: CommonFunction.isApp(context) ? 20 : 16,
          color: Constants.green,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: CommonFunction.isApp(context) ? 18 : 16,
            color: Constants.slate,
            fontFamily: 'FiraSans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
