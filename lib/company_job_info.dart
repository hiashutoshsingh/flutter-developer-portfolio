import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/common_functions.dart';
import 'package:flutter_developer_portfolio/constants.dart';

class CompanyJobInfo extends StatelessWidget {
  final int selectedIndex;

  CompanyJobInfo({
    this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    if (selectedIndex == 0) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position(
              'Software Developer', 'Innovaccer', 'https://innovaccer.com/'),
          SizedBox(
            height: 8,
          ),
          _period('March 2020', 'Present'),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Collaborated with a small team of student designers to spearhead a new brand and design system for Scout’s inaugural student-led design conference at Northeastern'),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Collaborated with a small team of student designers to spearhead a new brand and design system for Scout’s inaugural student-led design conference at Northeastern'),
        ],
      );
    } else if (selectedIndex == 1) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Executive Software Developer', 'Zappfresh',
              'https://www.zappfresh.com/'),
          SizedBox(
            height: 8,
          ),
          _period('August 2019', 'Feb 2020'),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Collaborated with a small team of student designers to spearhead a new brand and design system for Scout’s inaugural student-led design conference at Northeastern'),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Collaborated with a small team of student designers to spearhead a new brand and design system for Scout’s inaugural student-led design conference at Northeastern'),
        ],
      );
    } else if (selectedIndex == 2) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Software Engineer Intern', 'DUIT Mobile',
              'https://www.duit.io/'),
          SizedBox(
            height: 8,
          ),
          _period('March 2018', 'Jan 2019'),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Collaborated with a small team of student designers to spearhead a new brand and design system for Scout’s inaugural student-led design conference at Northeastern'),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Collaborated with a small team of student designers to spearhead a new brand and design system for Scout’s inaugural student-led design conference at Northeastern'),
        ],
      );
    } else if (selectedIndex == 3) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Android Developer Intern', 'Sapne NGO',
              'http://www.sapne.org.in/'),
          SizedBox(
            height: 8,
          ),
          _period('Aug 2018', 'Jan 2019'),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Collaborated with a small team of student designers to spearhead a new brand and design system for Scout’s inaugural student-led design conference at Northeastern'),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Collaborated with a small team of student designers to spearhead a new brand and design system for Scout’s inaugural student-led design conference at Northeastern'),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position(
              'Android Developer Intern',
              'Optimus Technology & IT - Services',
              'https://www.optimustechnology.com/'),
          SizedBox(
            height: 8,
          ),
          _period('June 2017', 'July 2017'),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Collaborated with a small team of student designers to spearhead a new brand and design system for Scout’s inaugural student-led design conference at Northeastern'),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Collaborated with a small team of student designers to spearhead a new brand and design system for Scout’s inaugural student-led design conference at Northeastern'),
        ],
      );
    }
  }

  Widget _position(String position, String company, String link) {
    return Row(
      children: [
        Text(
          position,
          style: TextStyle(
            fontSize: 20,
            color: Constants.white,
          ),
        ),
        InkWell(
          onTap: () {
            CommonFunction().openFromUrl(link);
          },
          child: Text(
            ' @' + company,
            style: TextStyle(
              fontSize: 20,
              color: Constants.green,
            ),
          ),
        ),
      ],
    );
  }

  Widget _period(String start, String end) {
    return Text(
      '$start - $end',
      style: TextStyle(
        fontSize: 16,
        color: Constants.slate,
      ),
    );
  }

  Widget _jobRole(String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Icon(
            Icons.play_arrow,
            size: 16,
            color: Constants.green,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Flexible(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: Constants.slate,
            ),
          ),
        ),
      ],
    );
  }
}
