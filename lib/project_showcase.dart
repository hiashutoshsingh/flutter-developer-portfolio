import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/constants.dart';

class ProjectShowcase extends StatelessWidget {
  final String title;

  ProjectShowcase({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Constants.white,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                _placeholder('janhit_3'),
                _placeholder('janhit_3'),
                _placeholder('janhit_3'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _placeholder(String image) {
    return Container(
      child: Image.asset(
        'asset/$image.png',
      ),
    );
  }
}
