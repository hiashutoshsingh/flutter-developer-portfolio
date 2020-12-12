import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/company_tile.dart';
import 'package:flutter_developer_portfolio/sub_header.dart';

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  List<String> _companyList;
  List<bool> _companySelected = <bool>[];

  @override
  void initState() {
    _companyList = [
      'Optimus Technology & IT - Services',
      'SAPNE NGO',
      'DUIT Mobile',
      'Zappfresh',
      'Innovaccer',
    ];
    for (int i = 0; i < 5; i++) {
      _companySelected.add(false);
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
          SubHeader(
            number: '02.',
            heading: 'Experience',
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: _companyList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  reverse: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          _companySelected[index] = true;
                          for (int i = 0; i < 5; i++) {
                            if (i != index) {
                              _companySelected[i] = false;
                            }
                          }
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: CompanyTile(
                          val: _companyList[index],
                          selected: _companySelected[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                color: Colors.lime,
                // width: double.infinity,
                // height: 100,
                // height: double.infinity,
              )
            ],
          ),
        ],
      ),
    );
  }
}
