import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/common_functions.dart';
import '../utils/constants.dart';

class SocialHandleItem extends StatefulWidget {
  final String socialHandleUrl;
  final String assetName;

  SocialHandleItem({
    this.assetName,
    this.socialHandleUrl,
  });

  @override
  _SocialHandleItemState createState() => _SocialHandleItemState();
}

class _SocialHandleItemState extends State<SocialHandleItem> {
  Color _iconColor;
  double _iconSize;

  @override
  void initState() {
    _iconColor = Constants.lightestSlate;
    _iconSize = 24;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CommonFunction.openFromUrl(widget.socialHandleUrl);
      },
      onHover: (value) {
        if (value) {
          setState(() {
            _iconColor = Constants.green;
          });
        } else {
          setState(() {
            _iconColor = Constants.lightestSlate;
          });
        }
      },
      child: SvgPicture.asset(
        'asset/${widget.assetName}.svg',
        width: _iconSize,
        height: _iconSize,
        color: _iconColor,
      ),
    );
  }
}
