import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

class BottomLineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 100,
        width: 1,
        color: Constants.white,
      ),
    );
  }
}
