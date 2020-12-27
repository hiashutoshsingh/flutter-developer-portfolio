import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/about.dart';
import 'package:flutter_developer_portfolio/app_bar.dart';
import 'package:flutter_developer_portfolio/common_functions.dart';
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
  PageController _pageController;
  bool _emailHover;

  @override
  void initState() {
    super.initState();
    _emailHover = false;
    _pageController = PageController(
      keepPage: true,
      viewportFraction: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.navy,
      appBar: AppBar(
        backgroundColor: Constants.navy,
        shadowColor: Constants.green.withOpacity(0.5),
        elevation: 10,
        title: WebAppBar(
          pageCallback: (pageNumber) {
            _pageController.animateToPage(
              pageNumber,
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 800),
            );
          },
        ),
      ),
      body: Container(
        child: CommonFunction().isMWeb(context)
            ? Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'asset/soon.png',
                        height: 300,
                        width: 500,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Mobile version is coming Soon!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 36,
                          color: Constants.slate,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Padding(
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
                          controller: _pageController,
                          children: [
                            Introduction(),
                            About(),
                            Experience(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 48),
                              child: Projects(),
                            ),
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
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 48),
                              child: OtherProjects(),
                            ),
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
                          child: InkWell(
                            onTap: () {
                              CommonFunction().openMail();
                            },
                            onHover: (val) {
                              if (val) {
                                setState(() {
                                  _emailHover = true;
                                });
                              } else {
                                setState(() {
                                  _emailHover = false;
                                });
                              }
                            },
                            child: Text(
                              'ashutoshsingh.0207@gmail.com',
                              style: TextStyle(
                                fontSize: 16,
                                color: _emailHover
                                    ? Constants.green
                                    : Constants.slate,
                              ),
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
