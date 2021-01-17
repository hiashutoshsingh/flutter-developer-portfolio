import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

class SubHeader extends StatelessWidget {
  final String number;
  final String heading;

  SubHeader({
    this.number,
    this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 2,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CommonFunction.isApp(context)
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: CommonFunction.isApp(context) ? 6 : 2,
                ),
                child: Text(
                  number,
                  style: TextStyle(
                    fontSize: 24,
                    color: Constants.green,
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Flexible(
                child: Text(
                  heading,
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w800,
                    color: Constants.white,
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
        ),
        CommonFunction.isApp(context)
            ? Container()
            : Flexible(
                flex: 1,
                child: Container(
                  height: 1,
                  color: Constants.slate,
                ),
              )
      ],
    );
  }
}
