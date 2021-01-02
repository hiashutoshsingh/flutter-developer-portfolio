import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_developer_portfolio/constants.dart';

import 'common_functions.dart';

class OtherProjects extends StatefulWidget {
  @override
  _OtherProjectsState createState() => _OtherProjectsState();
}

class _OtherProjectsState extends State<OtherProjects> {
  List<String> _titleOtherProject;

  List<String> _subTitleOtherProject;

  List<String> _link;

  @override
  void initState() {
    super.initState();
    _titleOtherProject = [
      'Flutter Animation Examples',
      'FlutterUIChallenge',
      'Movie',
      'Bulletin',
    ];
    _subTitleOtherProject = [
      'It showcase examples of all types of widgets used for animation in Flutter.',
      'List of all the flutter ui screens.',
      'It is clone of the Netlfix app calling api of Movie api.',
      'News app calling api of newapi.org.',
    ];
    _link = [
      'https://github.com/hiashutoshsingh/flutter-animation_examples',
      'https://github.com/hiashutoshsingh/FlutterUIChallenge',
      'https://github.com/hiashutoshsingh/Movie',
      'https://github.com/hiashutoshsingh/Bulletin',
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
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
          height: 32,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: _titleOtherProject.length,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: CommonFunction().isApp(context) ? .9 : .6,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right: CommonFunction().isApp(context) ? 16 : 32,
                    bottom: CommonFunction().isApp(context) ? 44 : 32,
                  ),
                  child: Card(
                    color: Constants.lightNavy,
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'asset/folder.png',
                                width: 48,
                                height: 48,
                              ),
                              InkWell(
                                onTap: _link[index] != null &&
                                        _link[index].trim().isNotEmpty
                                    ? () {
                                        CommonFunction()
                                            .openFromUrl(_link[index]);
                                      }
                                    : null,
                                hoverColor: Colors.transparent,
                                child: Image.asset(
                                  'asset/github_dark.png',
                                  width:
                                      CommonFunction().isApp(context) ? 24 : 16,
                                  height:
                                      CommonFunction().isApp(context) ? 24 : 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            _titleOtherProject[index],
                            style: TextStyle(
                              fontSize:
                                  CommonFunction().isApp(context) ? 20 : 16,
                              fontWeight: FontWeight.w600,
                              color: Constants.white,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            _subTitleOtherProject[index],
                            style: TextStyle(
                              fontSize:
                                  CommonFunction().isApp(context) ? 18 : 16,
                              color: Constants.lightestSlate,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
