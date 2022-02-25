import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';
import 'package:flutter_developer_portfolio/widgets/project_showcase.dart';
import 'package:flutter_developer_portfolio/widgets/social_handles/social_handles.dart';

import '../bottom_line_widget.dart';
import '../email_widget.dart';
import '../main_page/about_me_widget.dart';
import '../main_page/experience.dart';
import '../main_page/introduction.dart';
import '../main_page/projects.dart';
import '../other_noteworthy_projects/other_projects.dart';

class WebHomeBody extends StatelessWidget {
  final PageController pageController;

  WebHomeBody({
    this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: RawScrollbar(
          controller: pageController,
          thickness: 8,
          interactive: true,
          thumbColor: Constants.green,
          radius: Radius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SocialHandles(),
                    SizedBox(
                      height: 16,
                    ),
                    BottomLineWidget(),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 128),
                    child: PageView(
                      scrollDirection: Axis.vertical,
                      controller: pageController,
                      children: [
                        Introduction(),
                        AboutMeWidget(),
                        Experience(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 48),
                          child: Projects(),
                        ),

                        /// todo pass this through constants
                        _showcaseWidget(
                          'YourSkool',
                          'YourSkool gives a platform to practise english for children aged 5-12yrs.',
                        ),
                        _showcaseWidget(
                          'Intellect',
                          'Intellect provides you platform to prepare for UPSC.',
                        ),
                        _showcaseWidget(
                          'Intellect Dashboard',
                          'Dashboard to mange your courses, videos, tests and materials for Intellect app.',
                        ),
                        _showcaseWidget(
                          'Batuni',
                          'Batuni connects you to other users in topic based anonymous audio chats.',
                          appUrl: 'https://play.google.com/store/apps/details?id=app.batuni',
                        ),
                        _showcaseWidget(
                          'Duit',
                          'Duit provides you to share contact information with anyone to expand your reach.',
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 48),
                          child: OtherProjects(),
                        ),
                      ],
                    ),
                  ),
                ),
                EmailWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _showcaseWidget(
    String title,
    String subtitle, {
    String appUrl,
    String github,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: ProjectShowcase(
        title: title,
        subTitle: subtitle,
        playStoreUrl: appUrl,
        githubUrl: github,
      ),
    );
  }
}
