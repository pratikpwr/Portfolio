import 'package:flutter/material.dart';
import 'package:portfolio/models/skills_model.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/widgets/heading_underline.dart';
import 'package:portfolio/views/widgets/rich_text_heading.dart';
import 'package:portfolio/views/widgets/responsive_handler_widget.dart';

class MySkills extends StatelessWidget {
  final List<Skill> skills = [
    Skill(
        title: 'Flutter',
        desc:
            'Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase.',
        image: 'flutter_logo.png'),
    Skill(
        title: 'Dart',
        image: 'dart_logo.png',
        desc:
            'Dart is a client-optimized programming language for apps on multiple platforms. It is developed by Google and is used to build mobile, desktop, server, and web applications.'),
    Skill(
        title: 'Python',
        desc:
            'Python is an interpreted, high-level and general-purpose programming language. Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace.',
        image: 'python.png'),
    Skill(
        title: 'Flask',
        desc:
            'Flask is a micro web framework written in Python. It is classified as a micro-framework because it does not require particular tools or libraries.',
        image: 'flask_logo.png')
  ];

  Widget skillCard(BuildContext context, Skill skill) {
    return Container(
      //height: MediaQuery.of(context).size.height * 0.4,
      //width: MediaQuery.of(context).size.width * 0.15,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            skill.image,
            height: ResponsiveWidget.isSmallScreen(context) ? 80 : 100,
            width: ResponsiveWidget.isSmallScreen(context) ? 120 : 150,
          ),
          SizedBox(
            height: 16,
          ),
          // Text(
          //   skill.desc,
          //   style: TextStyle(color: Palette.subTitleColor, fontSize: 16),
          // )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichTextHeading(
          text1: 'My',
          text2: 'Skills',
          fontSize: 32,
        ),
        HeadingUnderline(),
        SizedBox(
          height: 32,
        ),
        ResponsiveWidget(
          smallScreen: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  skillCard(context, skills[0]),
                  skillCard(context, skills[3]),
                ],
              ),
              Column(
                children: [
                  skillCard(context, skills[1]),
                  skillCard(context, skills[2]),
                ],
              )
            ],
          ),
          largeScreen: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              skillCard(context, skills[0]),
              skillCard(context, skills[1]),
              skillCard(context, skills[2]),
              skillCard(context, skills[3]),
            ],
          ),
        )
      ],
    );
  }
}
