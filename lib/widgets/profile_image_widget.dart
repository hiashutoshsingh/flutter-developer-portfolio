import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

class ProfileImageWidget extends StatefulWidget {
  @override
  _ProfileImageWidgetState createState() => _ProfileImageWidgetState();
}

class _ProfileImageWidgetState extends State<ProfileImageWidget> {
  BlendMode _blendMode;

  @override
  void initState() {
    super.initState();
    _blendMode = BlendMode.modulate;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (val) {
        if (val) {
          setState(() {
            _blendMode = BlendMode.dstOver;
          });
        } else {
          setState(() {
            _blendMode = BlendMode.modulate;
          });
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16) + EdgeInsets.only(bottom: CommonFunction.isApp(context) ? 8 : 32),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            "asset/profile.jpeg",
            colorBlendMode: _blendMode,
            color: Constants.green,
            height: CommonFunction.isApp(context) ? 120 : null,
            width: CommonFunction.isApp(context) ? 120 : null,
          ),
        ),
      ),
    );
  }
}
