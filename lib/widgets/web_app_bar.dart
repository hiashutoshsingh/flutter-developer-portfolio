import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

class WebAppBar extends StatelessWidget {
  final Function(int) pageCallback;

  WebAppBar({
    this.pageCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.navy,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                pageCallback(0);
              },

              /// todo generic
              child: Text(
                'Ashutosh.'.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 32,
                  color: Constants.green,
                  fontFamily: 'FiraSans',
                ),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    pageCallback(1);
                  },
                  child: _appBarItem(
                    '1',
                    'About',
                    Icons.info_outline,
                  ),
                ),
                SizedBox(
                  width: 32,
                ),
                InkWell(
                  onTap: () {
                    pageCallback(2);
                  },
                  child: _appBarItem(
                    '2',
                    'Experience',
                    Icons.work_outline,
                  ),
                ),
                SizedBox(
                  width: 32,
                ),
                InkWell(
                  onTap: () {
                    pageCallback(3);
                  },
                  child: _appBarItem(
                    '3',
                    'Work',
                    Icons.handyman_outlined,
                  ),
                ),
                SizedBox(
                  width: 32,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _appBarItem(String number, String item, IconData iconData) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 20,
          color: Constants.green,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          '$item',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontFamily: 'FiraSans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
