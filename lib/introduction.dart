import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/constants.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi, my name is',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Constants.green,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            'Ashutosh Singh.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 64,
              color: Constants.white,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'I build mobile apps.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 64,
              color: Constants.lightSlate,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            'I am Software Developer based out of India specialized in building mobile apps. \nCurrently I am Fluttering!',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Constants.slate,
            ),
          ),
        ],
      ),
    );
  }
}
