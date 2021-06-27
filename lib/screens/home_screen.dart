import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';
import '../widgets/app_home_body.dart';
import '../widgets/main_page/about.dart';
import '../widgets/main_page/experience.dart';
import '../widgets/main_page/introduction.dart';
import '../widgets/main_page/projects.dart';
import '../widgets/mobile_app_bar.dart';
import '../widgets/other_projects.dart';
import '../widgets/project_showcase.dart';
import '../widgets/social_handles.dart';
import '../widgets/web_app_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;
  bool _emailHover;
  double _appBarHeight;

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
      bottomNavigationBar: CommonFunction.isApp(context)
          ? SafeArea(
              child: Padding(
                padding: EdgeInsets.all(
                  kIsWeb ? 8.0 : 0,
                ),
                child: SocialHandles(),
              ),
            )
          : null,
      appBar: AppBar(
        backgroundColor: Constants.navy,
        shadowColor: Constants.green.withOpacity(0.5),
        elevation: 10,
        toolbarHeight: _appBarHeight,
        title: CommonFunction.isApp(context)
            ? MobileAppBar(
                appBarClick: (isToggled, item) {
                  setState(() {
                    if (isToggled)
                      _appBarHeight = 160;
                    else
                      _appBarHeight = null;
                  });
                  if (item != -1) {
                    _pageController.animateToPage(
                      item,
                      curve: Curves.easeIn,
                      duration: Duration(milliseconds: 800),
                    );
                  }
                },
              )
            : WebAppBar(
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
        child: Stack(
          children: [
            CircularParticle(
              key: UniqueKey(),
              awayRadius: 1,
              numberOfParticles: CommonFunction.isApp(context) ? 30 : 80,
              speedOfParticles: 2,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              onTapAnimation: true,
              particleColor: Constants.white,
              awayAnimationDuration: Duration(milliseconds: 600),
              maxParticleSize: 2,
              isRandSize: false,
              isRandomColor: true,
              randColorList: [
                Constants.green,
                Constants.white,
                Constants.lightestNavy,
              ],
              awayAnimationCurve: Curves.easeInOut,
              enableHover: true,
              hoverColor: Colors.white,
              hoverRadius: 90,
              connectDots: false,
            ),
            if (CommonFunction.isApp(context))
              AppHomeBody(
                pageController: _pageController,
              )
            else
              Container(
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
                            controller: _pageController,
                            pageSnapping: false,
                            children: [
                              Introduction(),
                              About(),
                              Experience(),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 48),
                                child: Projects(),
                              ),

                              /// todo pass this through constants
                              _showcaseWidget('Intellect', 'Intellect provides you platform to prepare for UPSC.',
                                  appUrl: 'https://play.google.com/store/apps/details?id=com.intellectias.gradeupProto'),
                              _showcaseWidget('Intellect Dashboard',
                                  'Dashboard to mange your courses, videos, tests and materials for Intellect app.'),
                              _showcaseWidget(
                                  'Batuni', 'Batuni connects you to other users in topic based anonymous audio chats.',
                                  appUrl: 'https://play.google.com/store/apps/details?id=app.batuni'),
                              _showcaseWidget(
                                  'Duit', 'Duit provides you to share contact information with anyone to expand your reach.',
                                  appUrl: 'https://play.google.com/store/apps/details?id=io.duit.ecards'),
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
                                CommonFunction.openMail();
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

                              /// todo from constants
                              child: Text(
                                'hiashutoshkumarsingh@gmail.com',

                                /// todo style from TextStyle
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'FiraSans',
                                  fontWeight: FontWeight.w400,
                                  color: _emailHover ? Constants.green : Constants.slate,
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
          ],
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
