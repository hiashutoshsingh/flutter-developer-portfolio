import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/widgets/home_body/web_home_body.dart';
import 'package:particles_flutter/particles_flutter.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';
import '../widgets/app_bar/mobile_app_bar.dart';
import '../widgets/app_bar/web_app_bar.dart';
import '../widgets/home_body/app_home_body.dart';
import '../widgets/social_handles/social_handles.dart';

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
              WebHomeBody(
                pageController: _pageController,
              ),
          ],
        ),
      ),
    );
  }
}
