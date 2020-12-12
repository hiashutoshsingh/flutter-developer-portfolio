import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/sub_header.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SubHeader(
            number: '02.',
            heading: 'Experience',
          ),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
