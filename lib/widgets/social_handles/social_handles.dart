import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

import '../../utils/constants.dart';
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
            crossAxisAlignment: CrossAxisAlignment.center,
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _socialList(),
          );
  }

  List<Widget> _socialList() {
    return [
      SocialHandleItem(
        assetName: 'github',
        socialHandleUrl: Constants.githubUrl,
      ),
      SocialHandleItem(
        assetName: 'medium',
        socialHandleUrl: Constants.mediumUrl,
      ),
      SocialHandleItem(
        assetName: 'stackoverflow',
        socialHandleUrl: Constants.stackoverflowUrl,
      ),
      SocialHandleItem(
        assetName: 'linkedin',
        socialHandleUrl: Constants.linkedinUrl,
      ),
      SocialHandleItem(
        assetName: 'twitter',
        socialHandleUrl: Constants.twitterUrl,
      ),
      SocialHandleItem(
        assetName: 'instagram',
        socialHandleUrl: Constants.instagramUrl,
      ),
      SocialHandleItem(
        assetName: 'facebook',
        socialHandleUrl: Constants.facebookUrl,
      ),
      CommonFunction.isApp(context)
          ? InkWell(
              onTap: () {
                CommonFunction.openMail();
              },
              child: Padding(
                padding: EdgeInsets.only(top: 22),
                child: Icon(
                  Icons.email_outlined,
                  size: 24,
                  color: Constants.lightestSlate,
                ),
              ),
            )
          : Container(),
    ];
  }
}
