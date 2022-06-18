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
      mainAxisSize: MainAxisSize.min,
      children: [
        SubHeader(
          number: '01.',
          heading: 'About me',
        ),
        SizedBox(
          height: CommonFunction.isApp(context) ? 16 : 32,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (CommonFunction.isApp(context)) ...[
                    Center(child: ProfileImageWidget()),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                  Text(
                    "I'm using Flutter to create mobile apps, and I've completed over ten mobile and online projects. \nI presently work as a Software Engineer for Gojek, and I'm also working on various side projects to improve my mobile skills.",
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
                    'I enjoy making music beats and travelling SOLO to new locations :)',
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
                  Flexible(
                    child: Text(
                      "I've worked on the following technologies:",
                      style: TextStyle(
                        fontSize: CommonFunction.isApp(context) ? 18 : 16,
                        color: Constants.slate,
                        fontFamily: 'FiraSans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TechStackItem(text: 'Flutter'),
                            SizedBox(
                              height: CommonFunction.isApp(context) ? 8 : 12,
                            ),
                            TechStackItem(text: 'Android'),
                            SizedBox(
                              height: CommonFunction.isApp(context) ? 8 : 12,
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
                              height: CommonFunction.isApp(context) ? 8 : 12,
                            ),
                            TechStackItem(text: 'iOS'),
                            SizedBox(
                              height: CommonFunction.isApp(context) ? 8 : 12,
                            ),
                            TechStackItem(text: 'ReactNative'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            !CommonFunction.isApp(context)
                ? Flexible(
                    flex: 4,
                    child: ProfileImageWidget(),
                  )
                : Container()
          ],
        ),
      ],
    );
  }
}
