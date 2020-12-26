import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/constants.dart';

class OtherProjects extends StatefulWidget {
  @override
  _OtherProjectsState createState() => _OtherProjectsState();
}

class _OtherProjectsState extends State<OtherProjects> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Other Noteworthy Projects',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Constants.lightestSlate,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 10,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                width: 300,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'asset/folder.png',
                          width: 64,
                          height: 64,
                        ),
                        Image.asset(
                          'asset/github_dark.png',
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Integrating Algolia Search with WordPress Multisite',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Constants.white,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Building a custom multisite compatible WordPress plugin to build global search with Algolia',
                      style: TextStyle(
                        fontSize: 16,
                        color: Constants.lightestSlate,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
