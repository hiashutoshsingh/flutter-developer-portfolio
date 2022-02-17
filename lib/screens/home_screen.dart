import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/widgets/bottom_line_widget.dart';
import 'package:flutter_developer_portfolio/widgets/email_widget.dart';
import 'package:particles_flutter/particles_flutter.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';
import '../widgets/app_home_body.dart';
import '../widgets/main_page/about_me_widget.dart';
import '../widgets/main_page/experience.dart';
import '../widgets/main_page/introduction.dart';
import '../widgets/main_page/projects.dart';
import '../widgets/mobile_app_bar.dart';
import '../widgets/other_noteworthy_projects/other_projects.dart';
import '../widgets/project_showcase.dart';
import '../widgets/social_handles/social_handles.dart';
import '../widgets/web_app_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;
  double _appBarHeight;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      keepPage: true,
      viewportFraction: 1,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
              numberOfParticles: CommonFunction.isApp(context) ? 20 : 50,
              speedOfParticles: 2,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              onTapAnimation: true,
              particleColor: Constants.white,
              awayAnimationDuration: Duration(milliseconds: 600),
              maxParticleSize: 2,
              isRandSize: true,
              isRandomColor: true,
              randColorList: [Constants.green, Constants.white, Constants.lightestNavy],
              awayAnimationCurve: Curves.easeInOut,
              enableHover: false,
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
                          SizedBox(
                            height: 16,
                          ),
                          BottomLineWidget(),
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
                                appUrl: 'https://play.google.com/store/apps/details?id=co.yourskool',
                              ),
                              _showcaseWidget(
                                'Intellect',
                                'Intellect provides you platform to prepare for UPSC.',
                                appUrl: 'https://play.google.com/store/apps/details?id=com.intellectias.gradeupProto',
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
                                appUrl: 'https://play.google.com/store/apps/details?id=io.duit.ecards',
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 48),
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
          ],
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
