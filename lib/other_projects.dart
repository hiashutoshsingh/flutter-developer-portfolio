import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Container(
                    height: 300,
                    width: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'asset/folder.png',
                              width: 48,
                              height: 48,
                            ),
                            Image.asset(
                              'asset/github_dark.png',
                              width: 16,
                              height: 16,
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
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
