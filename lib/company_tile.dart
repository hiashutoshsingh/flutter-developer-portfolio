import 'package:flutter/material.dart';
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
      color: selected ? Constants.green.withOpacity(.05) : Colors.transparent,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Text(
          val,
          style: TextStyle(
            fontSize: 16,
            color: selected ? Constants.green : Constants.slate,
          ),
        ),
      ),
    );
  }
}
