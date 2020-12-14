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
              'Developed and shipped CBO application used by community organization to help manage social risk factors on Android, iOS and Web'),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Communicate with multi-disciplinary teams of engineers, designers and product managers on a daily basis'),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Having multiple discussions and demos within team to explore in flutter and make our existing apps more scalable'),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Currently working on design system components using flutter which will be used in multiple products in app at Innovaccer'),
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
              'Builded 2.0 version of Zappfresh from Scratch under the mentorship of Tech Lead and Designer by following Agile methods.'),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Built and designed basic inventory app using Flutter used by people at various hubs of Zappfresh'),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Responsible for the design, build, debug & maintenance of current app of Zappfresh'),
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
              'Successfully implemented modules like profile, analytics, Realm and also app connected with server APIs'),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Conducted and Organised Startup Events and networking with people'),
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
              'Improved app functionality and logics by writing modular code'),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Planned and implemented few modules in current to attract users'),
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
          _jobRole('Successfully Created a Prototype of E-learning app'),
          SizedBox(
            height: 12,
          ),
          _jobRole(
              'Connected with the Local Database using SQLite to handle offline data'),
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
