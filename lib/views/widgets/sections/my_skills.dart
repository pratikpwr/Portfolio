import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/models/skills_model.dart';
import 'package:portfolio/palette.dart';
import '../heading_underline.dart';
import '../rich_text_heading.dart';
import '../responsive_handler_widget.dart';

class MySkills extends StatelessWidget {
  final List<Skill> skills = [
    Skill(title: 'C/C++', value: 55),
    Skill(title: 'Dart', value: 70),
    Skill(title: 'Javascript', value: 60),
    Skill(title: 'Python', value: 65),
    Skill(title: 'Git/Github', value: 70),
    Skill(title: 'Flutter', value: 80),
    Skill(title: 'NodeJS', value: 65),
    Skill(title: 'Flask', value: 65),
    Skill(title: 'Adobe XD', value: 55),
    Skill(title: 'Project Management', value: 70)
  ];

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
          height: 40,
        ),
        ResponsiveWidget(
            smallScreen: Container(
              width: MediaQuery.of(context).size.width * 0.75,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: _skillBar(
                        context: context,
                        title: skills[index].title,
                        value: skills[index].value),
                  );
                },
              ),
            ),
            largeScreen: Container(
              // height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.75,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 70,
                    mainAxisSpacing: 10,
                    childAspectRatio: 9),
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  return _skillBar(
                      context: context,
                      title: skills[index].title,
                      value: skills[index].value);
                },
              ),
            ))
      ],
    );
  }

  Widget _skillBar({BuildContext context, String title, int value}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.33,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title.toUpperCase(),
                style: GoogleFonts.montserrat(
                    color: Palette.titleColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              Text(
                '$value%',
                style: GoogleFonts.montserrat(
                    color: Palette.titleColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 10,
            child: FAProgressBar(
              currentValue: value,
              displayTextStyle: TextStyle(color: Palette.primaryColor),
              maxValue: 100,
              size: 100,
              borderRadius: 0,
              animatedDuration: Duration(milliseconds: 1000),
              displayText: 'Python',
              progressColor: Palette.primaryColor,
              backgroundColor: Palette.whiteSmoke,
            ),
          ),
        ],
      ),
    );
  }
}
