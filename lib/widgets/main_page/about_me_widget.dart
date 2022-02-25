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
                  CommonFunction.isApp(context) ? Center(child: ProfileImageWidget()) : Container(),

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
                    "I'm now working on mobile apps with Flutter and have completed over ten mobile and web projects. \nI currently work at Innovaccer as a Software Developer and also doing some side projects to enhance my mobile skills.",
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
                    'I also enjoy producing music beats and have spent time learning how to use Fl Studio to do so.',
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
                    "I've worked on the following technologies:",
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
