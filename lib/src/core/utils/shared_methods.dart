import 'dart:io';

import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

class SharedMethods {
  launchUrl({required String url}) async {
    try {
      if (Platform.isIOS || Platform.isAndroid) {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(url: url);
        } else {
          throw 'Could not launch $url';
        }
      } else {
        html.window.open(url, '');
      }
    } catch (e) {
      html.window.open(url, '');
    }
  }
}
