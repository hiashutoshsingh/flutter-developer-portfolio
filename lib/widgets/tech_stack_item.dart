import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

class TechStackItem extends StatelessWidget {
  final String text;

  TechStackItem({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.ac_unit_sharp,
          size: CommonFunction.isApp(context) ? 20 : 14,
          color: Constants.green,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: CommonFunction.isApp(context) ? 18 : 16,
            color: Constants.slate,
            fontFamily: 'FiraSans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
