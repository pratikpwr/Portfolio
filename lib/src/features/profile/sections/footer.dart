import 'package:flutter/material.dart';

import '../../../ui/buttons/social_button.dart';
import '../../../ui/colors/palette.dart';
import '../../../ui/responsive_handler_widget.dart';
import '../../../ui/rich_text_heading.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        largeScreen: Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            alignment: Alignment.center,
            color: Palette.whiteSmoke,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(
                    url: 'https://www.github.com/pratikpwr',
                    iconUrl: 'github.png',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SocialButton(
                    url: 'https://www.linkedin.com/in/pratikpwr/',
                    iconUrl: 'linkedin.png',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SocialButton(
                    url: 'https://www.instagram.com/_.pratikpawar._/',
                    iconUrl: 'insta.png',
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              RichTextHeading(
                text1: 'Made with',
                text2: 'Flutter',
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
              RichTextHeading(
                text1: 'Designed & Built by',
                text2: 'Pratik Pawar',
                fontWeight: FontWeight.normal,
                fontSize: 18,
              ),
              SizedBox(
                height: 8,
              ),
              Text('© Copyright. All Rights Reserved'),
            ])));
  }
}
