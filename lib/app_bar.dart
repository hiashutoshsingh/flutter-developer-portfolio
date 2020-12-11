import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/constants.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.navy,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'A',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Constants.green,
              ),
            ),
            Row(
              children: [
                _appBarItem('1', 'About'),
                SizedBox(
                  width: 32,
                ),
                _appBarItem('2', 'Experience'),
                SizedBox(
                  width: 32,
                ),
                _appBarItem('3', 'Work'),
                SizedBox(
                  width: 32,
                ),
                _appBarItem('4', 'Contact'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _appBarItem(String number, String item) {
    return Row(
      children: [
        Text(
          '$number.',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xff64ffda),
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '$item',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
