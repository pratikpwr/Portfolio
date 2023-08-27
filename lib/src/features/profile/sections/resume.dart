import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui/colors/palette.dart';
import '../../../ui/heading_underline.dart';
import '../../../ui/responsive_handler_widget.dart';
import '../../../ui/rich_text_heading.dart';
import '../models/resume_model.dart';

class Resume extends StatelessWidget {
  final _education = ResumeData().education;

  final _experience = ResumeData().experiences;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichTextHeading(
          text1: 'My',
          text2: 'Resume',
          fontSize: 32,
        ),
        HeadingUnderline(),
        SizedBox(
          height: 60,
        ),
        ResponsiveWidget(
          largeScreen: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _edu(context),
              SizedBox(
                width: 16,
              ),
              _exp(context)
            ],
          ),
          smallScreen: Column(
            children: [
              _edu(context),
              SizedBox(
                height: 20,
              ),
              _exp(context)
            ],
          ),
        )
      ],
    );
  }

  Widget _edu(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education',
            style: GoogleFonts.mukta(
                fontSize: 26,
                color: Palette.titleColor,
                fontWeight: FontWeight.w600),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              eduSection(_education[0]),
              SizedBox(
                height: 8,
              ),
              eduSection(_education[1]),
              SizedBox(
                height: 8,
              ),
              eduSection(_education[2]),
            ],
          ),
        ],
      ),
    );
  }

  Widget eduSection(EducationModel _education) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _education.degree,
          style: GoogleFonts.poppins(
              fontSize: 19,
              color: Palette.primaryColor,
              fontWeight: FontWeight.w600),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          color: Palette.whiteSmoke,
          child: Text(
            _education.period,
            style: GoogleFonts.poppins(fontSize: 15, color: Palette.titleColor),
          ),
        ),
        Text(
          _education.institute,
          style: GoogleFonts.mukta(fontSize: 17, color: Palette.subTitleColor),
        ),
        Text(
          'Grade: ${_education.grades}',
          style: GoogleFonts.mukta(fontSize: 17, color: Palette.subTitleColor),
        ),
      ],
    );
  }

  Widget _exp(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience',
            style: GoogleFonts.mukta(
                fontSize: 26,
                color: Palette.titleColor,
                fontWeight: FontWeight.w600),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              expSection(_experience[0]),
              SizedBox(
                height: 8,
              ),
              expSection(_experience[1]),
              SizedBox(
                height: 8,
              ),
              expSection(_experience[2]),
              // SizedBox(
              //   height: 8,
              // ),
              // expSection(_experience[2]),
            ],
          ),
        ],
      ),
    );
  }

  Widget expSection(ExperienceModel _experience) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _experience.designation,
          style: GoogleFonts.poppins(
              fontSize: 19,
              color: Palette.primaryColor,
              fontWeight: FontWeight.w600),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          color: Palette.whiteSmoke,
          child: Text(
            _experience.period,
            style: GoogleFonts.poppins(fontSize: 15, color: Palette.titleColor),
          ),
        ),
        Text(
          _experience.company,
          style: GoogleFonts.mukta(fontSize: 17, color: Palette.subTitleColor),
        ),
        Text(
          '${_experience.details[0]}',
          style: GoogleFonts.mukta(fontSize: 17, color: Palette.subTitleColor),
        ),
      ],
    );
  }
}
