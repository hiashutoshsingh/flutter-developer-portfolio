import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/constants.dart';

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
            Text(
              'Ashutosh.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Constants.green,
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
                    _appBarItem('About', 0),
                    _appBarItem('Experience', 1),
                    _appBarItem('Work', 2),
                  ],
                ),
              )
            : Container()
      ],
    );
  }

  Widget _appBarItem(String title, int item) {
    return InkWell(
      onTap: () {
        setState(() {
          _toggle = !_toggle;
        });
        widget.appBarClick(false, item);
      },
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 8,
        ),
        child: Text(
          'Ashutosh.',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Constants.green,
          ),
        ),
      ),
    );
  }
}
