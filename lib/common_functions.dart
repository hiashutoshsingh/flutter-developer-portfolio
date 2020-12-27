import 'package:url_launcher/url_launcher.dart';

class CommonFunction {
  void openFromUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void openMail() {
    Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'ashutoshsingh.0207@gmail.com',
    );

    launch(_emailLaunchUri.toString());
  }
}
