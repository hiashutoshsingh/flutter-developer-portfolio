import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/about.dart';
import 'package:flutter_developer_portfolio/common_functions.dart';
import 'package:flutter_developer_portfolio/experience.dart';
import 'package:flutter_developer_portfolio/introduction.dart';
import 'package:flutter_developer_portfolio/project_showcase.dart';
import 'package:flutter_developer_portfolio/projects.dart';

import 'other_projects.dart';

class AppHomeBody extends StatelessWidget {
  PageController pageController;

  AppHomeBody({
    this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        scrollDirection: Axis.vertical,
        controller: pageController,
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
              left: 8,
              right: 4,
            ),
            child: About(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 4,
            ),
            child: Experience(),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: CommonFunction().isApp(context) ? 8 : 0,
              top: 48,
              bottom: 48,
            ),
            child: Projects(),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: CommonFunction().isApp(context) ? 8 : 0,
            ),
            child: _showcaseWidget('Intellect',
                'Intellect provides you platform to prepare for UPSC.',
                appUrl:
                    'https://play.google.com/store/apps/details?id=com.intellectias.gradeupProto'),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: CommonFunction().isApp(context) ? 8 : 0,
            ),
            child: _showcaseWidget('Intellect Dashboard',
                'Dashboard to mange your courses, videos, tests and materials for Intellect app.'),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: CommonFunction().isApp(context) ? 8 : 0,
            ),
            child: _showcaseWidget('Batuni',
                'Batuni connects you to other users in topic based anonymous audio chats.',
                appUrl:
                    'https://play.google.com/store/apps/details?id=app.batuni'),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: CommonFunction().isApp(context) ? 8 : 0,
            ),
            child: _showcaseWidget('Duit',
                'Duit provides you to share contact information with anyone to expand your reach.',
                appUrl:
                    'https://play.google.com/store/apps/details?id=io.duit.ecards'),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: CommonFunction().isApp(context) ? 8 : 0,
              top: 48,
              bottom: 48,
            ),
            child: OtherProjects(),
          ),
        ],
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
