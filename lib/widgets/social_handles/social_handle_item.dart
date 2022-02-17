import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/common_functions.dart';
import '../../utils/constants.dart';

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
  double _animatedPaddingValueBottom;
  double _animatedPaddingValueTop;

  @override
  void initState() {
    super.initState();
    _iconColor = Constants.lightestSlate;
    _iconSize = 24;
    _animatedPaddingValueBottom = 0;
    _animatedPaddingValueTop = 24;
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
            _animatedPaddingValueTop = 18;
            _animatedPaddingValueBottom = 6;
          });
        } else {
          setState(() {
            _iconColor = Constants.lightestSlate;
            _animatedPaddingValueTop = 24;
            _animatedPaddingValueBottom = 0;
          });
        }
      },
      child: AnimatedPadding(
        curve: Curves.easeIn,
        padding: EdgeInsets.only(
          top: _animatedPaddingValueTop,
          bottom: _animatedPaddingValueBottom,
        ),
        duration: Duration(milliseconds: 100),
        child: SvgPicture.asset(
          'asset/${widget.assetName}.svg',
          width: _iconSize,
          height: _iconSize,
          color: _iconColor,
        ),
      ),
    );
  }
}
