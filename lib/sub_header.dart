import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/common_functions.dart';
import 'package:flutter_developer_portfolio/constants.dart';

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
            crossAxisAlignment: CommonFunction().isApp(context)
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: CommonFunction().isApp(context) ? 6 : 2,
                ),
                child: Text(
                  number,
                  style: TextStyle(
                    fontSize: 24,
                    color: Constants.green,
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
                    fontWeight: FontWeight.bold,
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
        CommonFunction().isApp(context)
            ? Container()
            : Flexible(
                flex: 1,
                child: Container(
                  height: .1,
                  color: Constants.slate,
                ),
              )
      ],
    );
  }
}
