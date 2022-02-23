import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';
import 'package:flutter_developer_portfolio/widgets/sub_header.dart';

import '../../utils/common_functions.dart';
import '../profile_image_widget.dart';
import '../tech_stack_item.dart';

class AboutMeWidget extends StatelessWidget {
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
          height: CommonFunction.isApp(context) ? 16 : 32,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// todo move all contents to constants
                  CommonFunction.isApp(context) ? Center(child: ProfileImageWidget()) : Container(),
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
                    height: 8,
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
                    height: 16,
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TechStackItem(text: 'Flutter'),
                          SizedBox(
                            height: 12,
                          ),
                          TechStackItem(text: 'Android'),
                          SizedBox(
                            height: 12,
                          ),
                          TechStackItem(text: 'Python'),
                        ],
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TechStackItem(text: 'Flutter-Web'),
                          SizedBox(
                            height: 12,
                          ),
                          TechStackItem(text: 'iOS'),
                          SizedBox(
                            height: 12,
                          ),
                          TechStackItem(text: 'ReactNative'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            !CommonFunction.isApp(context)
                ? Flexible(
                    flex: 3,
                    child: ProfileImageWidget(),
                  )
                : Container()
          ],
        ),
      ],
    );
  }
}
