import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';

class ProfileImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16) + EdgeInsets.only(bottom: CommonFunction.isApp(context) ? 8 : 32),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          "asset/profile.jpeg",
          height: CommonFunction.isApp(context) ? 120 : null,
          width: CommonFunction.isApp(context) ? 120 : null,
        ),
      ),
    );
  }
}
