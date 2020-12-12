import 'package:flutter/material.dart';
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                number,
                style: TextStyle(
                  fontSize: 24,
                  color: Constants.green,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                heading,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Constants.white,
                ),
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
        ),
        Flexible(
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
