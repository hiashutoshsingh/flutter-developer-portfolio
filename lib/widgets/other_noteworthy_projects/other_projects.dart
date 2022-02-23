import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

import 'other_project_item.dart';

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

    /// todo generic
    _titleOtherProject = [
      'Flutter Animation Examples',
      'FlutterUIChallenge',
      'Movie',
      'Bulletin',
    ];
    _subTitleOtherProject = [
      'Examples of all types of widgets used for animation.',
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
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Other Noteworthy Projects',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Constants.lightestSlate,
            fontFamily: 'FiraSans',
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject[0],
                      description: _subTitleOtherProject[0],
                      url: _link[0],
                    ),
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject[1],
                      description: _subTitleOtherProject[1],
                      url: _link[1],
                    ),
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject[2],
                      description: _subTitleOtherProject[2],
                      url: _link[2],
                    ),
                    OtherNoteworthyProjectItem(
                      title: _titleOtherProject[3],
                      description: _subTitleOtherProject[3],
                      url: _link[3],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CommonFunction.isApp(context)
            ? Padding(
                padding: const EdgeInsets.only(top: 16),
                child: InkWell(
                  onTap: () {
                    CommonFunction.openFromUrl('https://brittanychiang.com/');
                  },
                  child: Card(
                    color: Constants.slate,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Shout-out to Brittany Chiang',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Constants.white,
                                fontFamily: 'FiraSans',
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.open_in_new,
                              size: 20,
                              color: Constants.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
