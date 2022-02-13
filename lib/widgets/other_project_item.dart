import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

class OtherProjectItem extends StatelessWidget {
  final String title;
  final String description;
  final String url;

  OtherProjectItem({
    this.title,
    this.description,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .3,
      height: size.height * .25,
      child: Padding(
        padding: EdgeInsets.only(
          right: CommonFunction.isApp(context) ? 16 : 32,
          bottom: CommonFunction.isApp(context) ? 24 : 32,
        ),
        child: Card(
          color: Constants.lightNavy,
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: CommonFunction.isApp(context) ? 20 : 16,
                          fontWeight: FontWeight.w600,
                          color: Constants.white,
                          fontFamily: 'FiraSans',
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        CommonFunction.openFromUrl(url);
                      },
                      child: Icon(
                        Icons.open_in_new,
                        size: CommonFunction.isApp(context) ? 20 : 16,
                        color: Constants.green,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: CommonFunction.isApp(context) ? 18 : 16,
                    color: Constants.lightestSlate,
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
