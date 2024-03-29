import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/widgets/project_showcase.dart';
import 'package:flutter_developer_portfolio/widgets/sub_header.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SubHeader(
            number: '03.',
            heading: 'Some Things I’ve Built',
          ),
          SizedBox(
            height: 32,
          ),

          /// todo change this
          /// todo generic
          Expanded(
            child: ProjectShowcase(
              title: 'Janhit',
              subTitle:
                  'Janhit app provides you information about the Covid 19.',
            ),
          ),
        ],
      ),
    );
  }
}
