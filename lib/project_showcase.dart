import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/constants.dart';

class ProjectShowcase extends StatefulWidget {
  final String title;

  ProjectShowcase({
    this.title,
  });

  @override
  _ProjectShowcaseState createState() => _ProjectShowcaseState();
}

class _ProjectShowcaseState extends State<ProjectShowcase> {
  List<Widget> _showcaseList;

  @override
  void initState() {
    if (widget.title == 'Janhit') {
      _showcaseList = [
        _placeholder('janhit_1'),
        _placeholder('janhit_2'),
        _placeholder('janhit_4'),
        _placeholder('janhit_5'),
        _placeholder('janhit_6'),
      ];
    } else if (widget.title == 'Intellect') {
      _showcaseList = [
        _placeholder('intellect_1'),
        _placeholder('intellect_2'),
        _placeholder('intellect_3'),
        _placeholder('intellect_4'),
        _placeholder('intellect_5'),
      ];
    } else if (widget.title == 'Intellect Dashboard') {
      _showcaseList = [
        _placeholder('intellect_d_1'),
        _placeholder('intellect_d_2'),
        _placeholder('intellect_d_3'),
      ];
    } else if (widget.title == 'Batuni') {
      _showcaseList = [
        _placeholder('batuni_1'),
        _placeholder('batuni_2'),
      ];
    } else if (widget.title == 'Duit') {
      _showcaseList = [
        _placeholder('duit_1'),
        _placeholder('duit_2'),
        _placeholder('duit_3'),
        _placeholder('duit_4'),
        _placeholder('duit_5'),
      ];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: _showcaseList,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _placeholder(String image) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: widget.title == 'Intellect Dashboard' ? 16 : 0),
      child: Image.asset(
        'asset/$image.png',
      ),
    );
  }
}
