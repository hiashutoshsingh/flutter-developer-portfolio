import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/utils/common_functions.dart';
import 'package:flutter_developer_portfolio/utils/constants.dart';

class OtherNoteworthyProjectItem extends StatelessWidget {
  final String title;
  final String description;
  final String url;

  OtherNoteworthyProjectItem({
    this.title,
    this.description,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: CommonFunction.isApp(context) ? null : size.width * .3,
      height: CommonFunction.isApp(context) ? null : size.height * .2,
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
              Flexible(
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: CommonFunction.isApp(context) ? 18 : 16,
                    color: Constants.lightestSlate,
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
