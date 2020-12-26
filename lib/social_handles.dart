import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/common_functions.dart';
import 'package:flutter_developer_portfolio/constants.dart';

class SocialHandles extends StatefulWidget {
  @override
  _SocialHandlesState createState() => _SocialHandlesState();
}

class _SocialHandlesState extends State<SocialHandles> {
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
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              CommonFunction().openFromUrl(Constants.githubUrl);
            },
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
            height: 32,
          ),
          InkWell(
            onTap: () {
              CommonFunction().openFromUrl(Constants.linkedinUrl);
            },
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
            height: 32,
          ),
          InkWell(
            onTap: () {
              CommonFunction().openFromUrl(Constants.twitterUrl);
            },
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
            height: 32,
          ),
          InkWell(
            onTap: () {
              CommonFunction().openFromUrl(Constants.instagramUrl);
            },
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
            height: 32,
          ),
          InkWell(
            onTap: () {
              CommonFunction().openFromUrl(Constants.facebookUrl);
            },
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
            height: 16,
          ),
        ],
      ),
    );
  }
}