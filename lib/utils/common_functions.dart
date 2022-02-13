import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class CommonFunction {
  static void openFromUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static void openMail() {
    Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'hiashutoshkumarsingh@gmail.com',
    );
    launch(_emailLaunchUri.toString());
  }

  static bool isApp(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width > 800) {
      return false;
    } else {
      return true;
    }
  }
}
