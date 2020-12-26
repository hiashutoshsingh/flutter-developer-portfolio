import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/about.dart';
import 'package:flutter_developer_portfolio/app_bar.dart';
import 'package:flutter_developer_portfolio/constants.dart';
import 'package:flutter_developer_portfolio/experience.dart';
import 'package:flutter_developer_portfolio/introduction.dart';
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 48),
                        child: ProjectShowcase(
                          title: 'Intellect',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 48),
                        child: ProjectShowcase(
                          title: 'Intellect Dashboard',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 48),
                        child: ProjectShowcase(
                          title: 'Batuni',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 48),
                        child: ProjectShowcase(
                          title: 'Duit',
                        ),
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
}
