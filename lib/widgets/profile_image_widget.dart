import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';

class ProfileImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(CommonFunction.isApp(context) ? 8 : 6),
        child: Image.asset(
          "asset/profile.png",
          height: CommonFunction.isApp(context) ? size.height * .3 : null,
          width: CommonFunction.isApp(context) ? size.width * .6 : null,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
