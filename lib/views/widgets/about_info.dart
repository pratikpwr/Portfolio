import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/widgets/PictureIllustration.dart';
import 'package:portfolio/views/widgets/custom_button.dart';
import 'package:portfolio/views/widgets/heading_underline.dart';
import 'package:portfolio/views/widgets/responsive_handler_widget.dart';
import 'package:portfolio/views/widgets/rich_text_heading.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Column(
        children: [
          RichTextHeading(
            text1: 'About',
            text2: 'Me',
            fontSize: 32,
          ),
          HeadingUnderline(),
          SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AboutDetails(),
              PictureIllustration(
                image: 'flutter_dev.png',
              ),
            ],
          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichTextHeading(
            text1: 'About',
            text2: 'Me',
            fontSize: 32,
          ),
          HeadingUnderline(),
          PictureIllustration(image: 'flutter_dev.png',),
          SizedBox(
            height: 40,
          ),
          AboutDetails()
        ],
      ),
    );
  }
}

class AboutDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final totalSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          // TODO: Add background container decoration
          color: Palette.lightPrimaryColor,
          child: SizedBox(),
        ),
        Container(
          // margin: EdgeInsets.only(left: 0, top: 16, bottom: 16),
          color: Colors.transparent,
          width: ResponsiveWidget.isSmallScreen(context)
              ? totalSize.width * 0.6
              : totalSize.width * 0.35,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pratik Pawar',
                style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Palette.titleColor),
              ),
              RichTextHeading(
                text1: 'I\'m Passionate',
                text2: 'Flutter Developer',
                fontWeight: FontWeight.normal,
              ),
              SizedBox(
                height: totalSize.height * 0.01,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquipex ea commodo consequat. Duis aute irure dolorin reprehenderit in voluptate velit esse cillu dolore eu fugiat nulla pariatur.',
                style: TextStyle(color: Palette.subTitleColor, fontSize: 16),
              ),
              SizedBox(
                height: totalSize.height * 0.02,
              ),
              CustomButton(
                text: 'View Resume',
                onTap: () {},
              )
            ],
          ),
        ),
      ],
    );
  }
}
