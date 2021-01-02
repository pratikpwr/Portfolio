import 'package:flutter/material.dart';
import 'package:portfolio/palette.dart';
import 'dart:io';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatefulWidget {
  final IconData icon;
  final String url;

  const SocialButton({@required this.icon, @required this.url});

  @override
  _SocialButtonState createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  Color iconColor = Palette.titleColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          if (widget.url != null) {
            try {
              if (Platform.isIOS || Platform.isAndroid) {
                _launchURLInMobile(widget.url);
              } else {
                _launchURLInWeb(widget.url);
              }
            } catch (e) {
              print(e);
              _launchURLInWeb(widget.url);
            }
            return;
          }
        },
        onHover: (isHovered) {
          if (isHovered) {
            setState(() {
              iconColor = Palette.deepPrimaryColor;
            });
          } else {
            setState(() {
              iconColor = Palette.titleColor;
            });
          }
        },
        child: Icon(
          widget.icon,
          size: 22,
          color: iconColor,
        ));
  }

  _launchURLInMobile(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchURLInWeb(String url) {
    html.window.open(url, '');
  }
}
