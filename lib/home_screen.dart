import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/about.dart';
import 'package:flutter_developer_portfolio/app_bar.dart';
import 'package:flutter_developer_portfolio/constants.dart';
import 'package:flutter_developer_portfolio/experience.dart';
import 'package:flutter_developer_portfolio/introduction.dart';
import 'package:flutter_developer_portfolio/other_projects.dart';
import 'package:flutter_developer_portfolio/project_showcase.dart';
import 'package:flutter_developer_portfolio/projects.dart';
import 'package:flutter_developer_portfolio/social_handles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.navy,
      appBar: AppBar(
        backgroundColor: Constants.navy,
        title: WebAppBar(),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 48,
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
                  _bottomLine(),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 128),
                  child: PageView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Introduction(),
                      About(),
                      Experience(),
                      Projects(),
                      _showcaseWidget('Intellect',
                          'Intellect provides you platform to prepare for UPSC.',
                          appUrl:
                              'https://play.google.com/store/apps/details?id=com.intellectias.gradeupProto'),
                      _showcaseWidget('Intellect Dashboard',
                          'Dashboard to mange your courses, videos, tests and materials for Intellect app.'),
                      _showcaseWidget('Batuni',
                          'Batuni connects you to other users in topic based anonymous audio chats.',
                          appUrl:
                              'https://play.google.com/store/apps/details?id=app.batuni'),
                      _showcaseWidget('Duit',
                          'Duit provides you to share contact information with anyone to expand your reach.',
                          appUrl:
                              'https://play.google.com/store/apps/details?id=io.duit.ecards'),
                      OtherProjects(),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      'ashutoshsingh.0207@gmail.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: Constants.slate,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  _bottomLine(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomLine() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 100,
        width: 1,
        color: Constants.white,
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
