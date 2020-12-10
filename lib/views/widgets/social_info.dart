import 'package:flutter/material.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/widgets/heading_underline.dart';
import 'package:portfolio/views/widgets/rich_text_heading.dart';

class SocialInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RichTextHeading(
            text1: 'Contact',
            text2: 'Me',
            fontSize: 32,
          ),
          HeadingUnderline(),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButton(image: 'github_logo.png', onTap: () {}),
              SocialButton(image: 'linked_logo.jpg', onTap: () {}),
              SocialButton(image: 'insta_logo.jpg', onTap: () {}),
              SocialButton(image: 'email_logo.jpg', onTap: () {})
            ],
          ),
        ],
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String image;
  final Function onTap;

  const SocialButton({@required this.image, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      padding: const EdgeInsets.all(12.0),
      child: Image.asset(
        image,
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.height * 0.05,
        fit: BoxFit.cover,
      ),
    );
  }
}
