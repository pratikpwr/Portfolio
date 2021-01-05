import 'dart:io';

import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

class SharedMethods {
   launchUrl({String url}) async {
    try {
      if (Platform.isIOS || Platform.isAndroid) {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      } else {
        html.window.open(url, '');
      }
    } catch (e) {
      print(e);
      html.window.open(url, '');
    }
  }
}
