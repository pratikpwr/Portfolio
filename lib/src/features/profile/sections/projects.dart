import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui/buttons/project_card.dart';
import '../../../ui/colors/palette.dart';
import '../../../ui/heading_underline.dart';
import '../../../ui/responsive_handler_widget.dart';
import '../../../ui/rich_text_heading.dart';
import '../models/project_model.dart';

class Projects extends StatelessWidget {
  final _projects = ProjectList().getProjects();

  @override
  Widget build(BuildContext context) {
    // var totalSize = MediaQuery
    //     .of(context)
    //     .size;
    return Column(
      children: [
        RichTextHeading(
          text1: 'My',
          text2: 'Projects',
          fontSize: 32,
        ),
        HeadingUnderline(),
        SizedBox(
          height: 20,
        ),
        _smallIntro(),
        SizedBox(
          height: 20,
        ),
        ResponsiveWidget(
            largeScreen: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          !ResponsiveWidget.isLargeScreen(context) ? 1 : 3,
                      crossAxisSpacing: 25,
                      mainAxisSpacing: 15,
                      childAspectRatio: 1.8),
                  itemCount: _projects.length,
                  itemBuilder: (_, index) {
                    return ProjectCard(project: _projects[index]);
                  },
                )))
      ],
    );
  }

  Widget _smallIntro() {
    return Text(
      'Here are some of my Projects',
      style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Palette.subTitleColor),
      textAlign: TextAlign.center,
    );
  }
}
