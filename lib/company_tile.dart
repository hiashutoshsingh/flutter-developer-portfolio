import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/common_functions.dart';
import 'package:flutter_developer_portfolio/constants.dart';

class CompanyTile extends StatelessWidget {
  final String val;
  final bool selected;

  CompanyTile({
    this.val,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ? Constants.green.withOpacity(.05) : Colors.transparent,
        borderRadius: BorderRadius.circular(
          CommonFunction().isApp(context) ? 12 : 0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Text(
          val,
          style: TextStyle(
            fontSize: CommonFunction().isApp(context) ? 18 : 16,
            color: selected ? Constants.green : Constants.slate,
            fontFamily: 'FiraSans',
            fontWeight: CommonFunction().isApp(context)
                ? FontWeight.w600
                : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
