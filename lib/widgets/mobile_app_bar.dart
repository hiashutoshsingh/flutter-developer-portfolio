import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

class MobileAppBar extends StatefulWidget {
  final Function(bool, int) appBarClick;

  MobileAppBar({
    this.appBarClick,
  });

  @override
  _MobileAppBarState createState() => _MobileAppBarState();
}

class _MobileAppBarState extends State<MobileAppBar> {
  bool _toggle;

  @override
  void initState() {
    super.initState();
    _toggle = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => widget.appBarClick(_toggle, 0),
              child: Text(
                'Ashutosh.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Constants.green,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _toggle = !_toggle;
                });
                widget.appBarClick(_toggle, -1);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Constants.green,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.view_headline_outlined,
                    color: Constants.slate,
                    size: 32,
                  ),
                ),
              ),
            ),
          ],
        ),
        _toggle
            ? Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 4,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _appBarItem(
                      'About',
                      1,
                      Icons.info_outline,
                    ),
                    _appBarItem(
                      'Experience',
                      2,
                      Icons.work_outline,
                    ),
                    _appBarItem(
                      'Work',
                      3,
                      Icons.build,
                    ),
                  ],
                ),
              )
            : Container()
      ],
    );
  }

  Widget _appBarItem(String title, int item, IconData icon) {
    return InkWell(
      onTap: () {
        setState(() {
          _toggle = !_toggle;
        });
        widget.appBarClick(false, item);
      },
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 12,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: kIsWeb ? 20 : 24,
              color: Constants.green.withOpacity(0.8),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: kIsWeb ? 16 : 20,
                color: Constants.slate,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
