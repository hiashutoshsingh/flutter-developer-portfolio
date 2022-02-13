import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

import 'bottom_line_widget.dart';

class EmailWidget extends StatefulWidget {
  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  bool _emailHover;

  @override
  void initState() {
    super.initState();
    _emailHover = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        RotatedBox(
          quarterTurns: 1,
          child: InkWell(
            onTap: () {
              CommonFunction.openMail();
            },
            onHover: (val) {
              if (val) {
                setState(() {
                  _emailHover = true;
                });
              } else {
                setState(() {
                  _emailHover = false;
                });
              }
            },
            child: Text(
              Constants.email,

              /// todo style from TextStyle
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'FiraSans',
                fontWeight: FontWeight.w400,
                color: _emailHover ? Constants.green : Constants.slate,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        BottomLineWidget(),
      ],
    );
  }
}
