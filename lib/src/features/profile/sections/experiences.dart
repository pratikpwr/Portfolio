import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui/colors/palette.dart';
import '../../../ui/heading_underline.dart';
import '../../../ui/responsive_handler_widget.dart';
import '../../../ui/rich_text_heading.dart';
import '../models/resume_model.dart';

class Experiences extends StatelessWidget {
  final _experience = ResumeData().experiences;

  Experiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RichTextHeading(
          text1: 'Work',
          text2: 'Experiences',
          fontSize: 32,
        ),
        HeadingUnderline(),
        const SizedBox(height: 60),
        ResponsiveWidget(
          largeScreen: _exp(context),
        )
      ],
    );
  }

  Widget _exp(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          expSection(_experience[0]),
          const SizedBox(height: 16),
          expSection(_experience[1]),
          const SizedBox(height: 16),
          expSection(_experience[2]),
          const SizedBox(height: 16),
          expSection(_experience[3]),
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
            fontSize: 21,
            color: Palette.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          _experience.company,
          style: GoogleFonts.mukta(fontSize: 19, color: Palette.subTitleColor),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          color: Palette.whiteSmoke,
          child: Text(
            _experience.period,
            style: GoogleFonts.poppins(fontSize: 15, color: Palette.titleColor),
          ),
        ),
        Text(
          _experience.details[0],
          style: GoogleFonts.mukta(fontSize: 17, color: Palette.subTitleColor),
        ),
      ],
    );
  }
}
