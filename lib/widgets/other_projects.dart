import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

import '../utils/common_functions.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
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
            CommonFunction.isApp(context)
                ? Container()
                : Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                    ),
                    child: Container(
                      height: 0.1,
                      width: 400,
                      color: Constants.slate,
                    ),
                  ),
          ],
        ),
        SizedBox(
          height: 32,
        ),
        Wrap(
          children: [
            OtherProjectItem(
              title: _titleOtherProject[0],
              description: _subTitleOtherProject[0],
            ),
            OtherProjectItem(
              title: _titleOtherProject[1],
              description: _subTitleOtherProject[1],
            ),
            OtherProjectItem(
              title: _titleOtherProject[2],
              description: _subTitleOtherProject[2],
            ),
            OtherProjectItem(
              title: _titleOtherProject[3],
              description: _subTitleOtherProject[3],
            ),
          ],
        ),
        // Expanded(
        //   child: Container(
        //     width: double.infinity,
        //     child: GridView.builder(
        //       shrinkWrap: true,
        //       itemCount: _titleOtherProject.length,
        //       padding: EdgeInsets.zero,
        //       scrollDirection: Axis.horizontal,
        //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2,
        //         childAspectRatio: CommonFunction.isApp(context) ? .75 : .65,
        //       ),
        //       itemBuilder: (context, index) {
        //         return Padding(
        //           padding: EdgeInsets.only(
        //             right: CommonFunction.isApp(context) ? 16 : 32,
        //             bottom: CommonFunction.isApp(context) ? 24 : 32,
        //           ),
        //           child: Card(
        //             color: Constants.lightNavy,
        //             elevation: 5,
        //             child: Padding(
        //               padding: const EdgeInsets.all(16.0),
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 mainAxisSize: MainAxisSize.min,
        //                 children: [
        //                   Text(
        //                     _titleOtherProject[index],
        //                     style: TextStyle(
        //                       fontSize: CommonFunction.isApp(context) ? 20 : 16,
        //                       fontWeight: FontWeight.w600,
        //                       color: Constants.white,
        //                       fontFamily: 'FiraSans',
        //                     ),
        //                   ),
        //                   SizedBox(
        //                     height: 16,
        //                   ),
        //                   Text(
        //                     _subTitleOtherProject[index],
        //                     style: TextStyle(
        //                       fontSize: CommonFunction.isApp(context) ? 18 : 16,
        //                       color: Constants.lightestSlate,
        //                       fontFamily: 'FiraSans',
        //                       fontWeight: FontWeight.w400,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         );
        //       },
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
