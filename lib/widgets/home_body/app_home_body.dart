import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/widgets/main_page/about_me_widget.dart';
import 'package:flutter_developer_portfolio/widgets/main_page/experience.dart';
import 'package:flutter_developer_portfolio/widgets/main_page/introduction.dart';
import 'package:flutter_developer_portfolio/widgets/main_page/projects.dart';
import 'package:flutter_developer_portfolio/widgets/project_showcase.dart';

import '../other_noteworthy_projects/other_projects.dart';

class AppHomeBody extends StatelessWidget {
  final PageController pageController;

  AppHomeBody({
    this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: pageController,
      pageSnapping: false,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 4,
          ),
          child: Introduction(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: AboutMeWidget(),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Experience(),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
            top: 48,
            bottom: 48,
          ),
          child: Projects(),
        ),

        /// todo generic
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'YourSkool',
            'YourSkool gives a platform to practise english for children aged 5-12yrs.',
            appUrl: 'https://play.google.com/store/apps/details?id=co.yourskool',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'Intellect',
            'Intellect provides you platform to prepare for UPSC.',
            appUrl: 'https://play.google.com/store/apps/details?id=com.intellectias.gradeupProto',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'Intellect Dashboard',
            'Dashboard to mange your courses, videos, tests and materials for Intellect app.',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'Batuni',
            'Batuni connects you to other users in topic based anonymous audio chats.',
            appUrl: 'https://play.google.com/store/apps/details?id=app.batuni',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: CommonFunction.isApp(context) ? 16 : 0,
          ),
          child: _showcaseWidget(
            'Duit',
            'Duit provides you to share contact information with anyone to expand your reach.',
            appUrl: 'https://play.google.com/store/apps/details?id=io.duit.ecards',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
                top: 48,
                bottom: 48,
              ) +
              (CommonFunction.isApp(context) ? EdgeInsets.symmetric(horizontal: 16) : EdgeInsets.zero),
          child: OtherProjects(),
        ),
      ],
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
