import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

import '../utils/constants.dart';
import 'social_handle_item.dart';

class SocialHandles extends StatefulWidget {
  @override
  _SocialHandlesState createState() => _SocialHandlesState();
}

class _SocialHandlesState extends State<SocialHandles> {
  @override
  Widget build(BuildContext context) {
    return CommonFunction.isApp(context)
        ? Row(
            mainAxisSize: MainAxisSize.max,
            children: _socialList(),
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          )
        : Column(
            children: _socialList(),
          );
  }

  List<Widget> _socialList() {
    return [
      SocialHandleItem(
        assetName: 'github',
        socialHandleUrl: Constants.githubUrl,
      ),
      SizedBox(
        height: 32,
      ),
      SocialHandleItem(
        assetName: 'linkedin',
        socialHandleUrl: Constants.linkedinUrl,
      ),
      SizedBox(
        height: 32,
      ),
      SocialHandleItem(
        assetName: 'medium',
        socialHandleUrl: Constants.mediumUrl,
      ),
      SizedBox(
        height: 32,
      ),
      SocialHandleItem(
        assetName: 'twitter',
        socialHandleUrl: Constants.twitterUrl,
      ),
      SizedBox(
        height: 32,
      ),
      SocialHandleItem(
        assetName: 'instagram',
        socialHandleUrl: Constants.instagramUrl,
      ),
      SizedBox(
        height: 32,
      ),
      SocialHandleItem(
        assetName: 'facebook',
        socialHandleUrl: Constants.facebookUrl,
      ),
      SizedBox(
        height: 16,
      ),
      CommonFunction.isApp(context)
          ? InkWell(
              onTap: () {
                CommonFunction.openMail();
              },
              child: Icon(
                Icons.email_outlined,
                size: 24,
                color: Constants.slate,
              ),
            )
          : Container(),
    ];
  }
}
