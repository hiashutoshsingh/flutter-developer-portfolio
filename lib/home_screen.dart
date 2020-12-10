import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/app_bar.dart';
import 'package:flutter_developer_portfolio/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String github = 'github_dark';
  String facebook = 'facebook_dark';
  String instagram = 'instagram_dark';
  String linkedin = 'linkedin_dark';
  String twitter = 'twitter_dark';

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
            horizontal: 32,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      if (value) {
                        setState(() {
                          github = 'github_light';
                        });
                      } else {
                        setState(() {
                          github = 'github_dark';
                        });
                      }
                    },
                    child: Container(
                      child: Image.asset(
                        'asset/$github.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      if (value) {
                        setState(() {
                          linkedin = 'linkedin_light';
                        });
                      } else {
                        setState(() {
                          linkedin = 'linkedin_dark';
                        });
                      }
                    },
                    child: Image.asset(
                      'asset/$linkedin.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      if (value) {
                        setState(() {
                          twitter = 'twitter_light';
                        });
                      } else {
                        setState(() {
                          twitter = 'twitter_dark';
                        });
                      }
                    },
                    child: Image.asset(
                      'asset/$twitter.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      if (value) {
                        setState(() {
                          instagram = 'instagram_light';
                        });
                      } else {
                        setState(() {
                          instagram = 'instagram_dark';
                        });
                      }
                    },
                    child: Image.asset(
                      'asset/$instagram.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  InkWell(
                    onTap: () {},
                    onHover: (value) {
                      if (value) {
                        setState(() {
                          facebook = 'facebook_light';
                        });
                      } else {
                        setState(() {
                          facebook = 'facebook_dark';
                        });
                      }
                    },
                    child: Image.asset(
                      'asset/$facebook.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Container(
                      height: 200,
                      width: 1,
                      color: Constants.white,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                'You have pushed the button this many times:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
