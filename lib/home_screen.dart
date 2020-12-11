import 'package:flutter/material.dart';
import 'package:flutter_developer_portfolio/app_bar.dart';
import 'package:flutter_developer_portfolio/constants.dart';
import 'package:flutter_developer_portfolio/social_handles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.navy,
      appBar: AppBar(
        backgroundColor: Constants.navy,
        title: WebAppBar(),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 48,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SocialHandles(),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Container(
                      height: 100,
                      width: 1,
                      color: Constants.white,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                'You have pushed the button this many times:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
