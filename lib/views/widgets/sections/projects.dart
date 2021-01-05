import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/widgets/buttons/project_card.dart';
import 'package:portfolio/views/widgets/heading_underline.dart';
import 'package:portfolio/views/widgets/responsive_handler_widget.dart';
import 'package:portfolio/views/widgets/rich_text_heading.dart';

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
                          !ResponsiveWidget.isLargeScreen(context) ? 1 : 2,
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
