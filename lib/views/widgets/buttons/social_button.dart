import 'package:flutter/material.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/widgets/shared_methods.dart';

class SocialButton extends StatefulWidget {
  final String iconUrl;
  final String url;

  const SocialButton({@required this.iconUrl, @required this.url});

  @override
  _SocialButtonState createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  Color iconColor = Palette.titleColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          SharedMethods().launchUrl(url: widget.url);
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
        child: Image.asset(
          widget.iconUrl,
          height: 22,
          width: 22,
          color: iconColor,
        ));
  }
}
