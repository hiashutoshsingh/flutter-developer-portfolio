import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

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
          /// todo generic
          _position('Software Developer', 'Innovaccer', 'https://innovaccer.com/', context),
          SizedBox(
            height: 8,
          ),
          _period('March 2020', 'Present', context),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Currently working on the Chat-SDK and building Design system components in Flutter, which is used in a variety of Innovaccer mobile products as well as a Telemedicine application.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'On Android, iOS, and the Web, I developed and released the CBO app, which is utilised by community organisations to assist manage social risk factors.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole('On a daily basis, I communicate with multi-disciplinary teams of engineers, designers, and product managers.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Multiple conversations and demos within the team to learn more about flutter and make our existing apps more scalable.',
              context),
        ],
      );
    } else if (selectedIndex == 1) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Executive Software Developer', 'Zappfresh', 'https://www.zappfresh.com/', context),
          SizedBox(
            height: 8,
          ),
          _period('August 2019', 'Feb 2020', context),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Under the guidance of a Tech Lead and a Designer, I built the 2.0 version of Zappfresh from the ground up using Agile methodologies.',
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole("Built and created a basic inventory app in Flutter that is utilised by people at Zappfresh's numerous hubs.",
              context),
          SizedBox(
            height: 12,
          ),
          _jobRole("Responsible for the design, development, testing, and upkeep of Zappfresh's current app.", context),
        ],
      );
    } else if (selectedIndex == 2) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Software Engineer Intern', 'DUIT Mobile', 'https://www.duit.io/', context),
          SizedBox(
            height: 8,
          ),
          _period('March 2018', 'Jan 2019', context),
          SizedBox(
            height: 16,
          ),
          _jobRole(
              'Successfully implemented modules like profile, analytics, Realm and also app connected with server APIs', context),
          SizedBox(
            height: 12,
          ),
          _jobRole('Conducted and Organised Startup Events and networking with people', context),
        ],
      );
    } else if (selectedIndex == 3) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position('Android Developer Intern', 'Sapne NGO', 'http://www.sapne.org.in/', context),
          SizedBox(
            height: 8,
          ),
          _period('Aug 2018', 'Jan 2019', context),
          SizedBox(
            height: 16,
          ),
          _jobRole('Improved app functionality and logics by writing modular code', context),
          SizedBox(
            height: 12,
          ),
          _jobRole('Planned and implemented few modules in current to attract users', context),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _position(
              'Android Developer Intern', 'Optimus Technology & IT - Services', 'https://www.optimustechnology.com/', context),
          SizedBox(
            height: 8,
          ),
          _period('June 2017', 'July 2017', context),
          SizedBox(
            height: 16,
          ),
          _jobRole('Successfully Created a Prototype of E-learning app', context),
          SizedBox(
            height: 12,
          ),
          _jobRole('Connected with the Local Database using SQLite to handle offline data', context),
        ],
      );
    }
  }

  Widget _position(String position, String company, String link, BuildContext context) {
    return Row(
      children: [
        Text(
          position,
          style: TextStyle(
            fontSize: 20,
            color: Constants.white,
            fontFamily: 'FiraSans',
            fontWeight: CommonFunction.isApp(context) ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
        CommonFunction.isApp(context)
            ? Container()
            : InkWell(
                onTap: () {
                  CommonFunction.openFromUrl(link);
                },
                child: Text(
                  ' @' + company,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w400,
                    color: Constants.green,
                  ),
                ),
              ),
      ],
    );
  }

  Widget _period(String start, String end, BuildContext context) {
    return Text(
      '$start - $end',
      style: TextStyle(
        fontSize: CommonFunction.isApp(context) ? 18 : 16,
        color: Constants.slate,
        fontFamily: 'FiraSans',
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _jobRole(String value, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Icon(
            Icons.play_arrow,
            size: CommonFunction.isApp(context) ? 20 : 16,
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
              fontFamily: 'FiraSans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
