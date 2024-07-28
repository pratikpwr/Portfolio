import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui/PictureIllustration.dart';
import '../../../ui/colors/palette.dart';
import '../../../ui/heading_underline.dart';
import '../../../ui/responsive_handler_widget.dart';
import '../../../ui/rich_text_heading.dart';

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

          // _smallIntro(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: AboutDetails()),
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
          SizedBox(
            height: 20,
          ),
          // _smallIntro(),
          PictureIllustration(
            image: 'flutter_dev.png',
          ),
          SizedBox(
            height: 40,
          ),
          AboutDetails()
        ],
      ),
    );
  }

  Widget _smallIntro() {
    return Text(
      '''Results-driven Mobile Application Developer with 3+ years of experience specializing in Flutter development. Proven track record in optimizing app performance, integrating payment systems, and enhancing user experience. Adept at collaborating with cross-functional teams to deliver high-quality applications. Passionate about leveraging creativity and innovation to drive impactful software development.''',
      style: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Palette.subTitleColor,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class AboutDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final totalSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        UnconstrainedBox(
          child: Container(
            // TODO: Add background container decoration
            width: 5,
            color: Palette.lightPrimaryColor,
            child: Container(),
          ),
        ),
        Container(
          // margin: EdgeInsets.only(left: 0, top: 16, bottom: 16),
          color: Colors.transparent,
          width: ResponsiveWidget.isSmallScreen(context)
              ? totalSize.width * 0.6
              : totalSize.width * 0.4,
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
              if (ResponsiveWidget.isLargeScreen(context)) detailsInRow(),
              if (!ResponsiveWidget.isLargeScreen(context)) detailsInColumn(),
              SizedBox(
                height: totalSize.height * 0.02,
              ),
              Text(
                'Results-driven Mobile Application Developer with 3+ years of experience specializing in Flutter development. \nProven track record in optimizing app performance, integrating payment systems, and enhancing user experience. \nAdept at collaborating with cross-functional teams to deliver high-quality applications. Passionate about leveraging creativity and innovation to drive impactful software development.',
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Palette.subTitleColor),
                textAlign: TextAlign.start,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget detailsInColumn() {
    return Column(
      children: [
        DetailsWidget(
          title: 'BirthDay',
          value: '21 March 2000',
        ),

        DetailsWidget(
          title: 'Phone',
          value: '+91-7218172664',
        ),
        DetailsWidget(
          title: 'City',
          value: 'Nashik, MH, India',
        ),
        DetailsWidget(
          title: 'Age',
          value: '24',
        ),
        DetailsWidget(
          title: 'Degree',
          value: 'BE CSE',
        ),
        // DetailsWidget(
        //   title: 'Email',
        //   value: 'pratiksatishpawar@gmail.com',
        // ),
      ],
    );
  }

  Widget detailsInRow() {
    return const Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsWidget(
              title: 'BirthDay',
              value: '21 March 2000',
            ),
            DetailsWidget(
              title: 'Phone',
              value: '+91-7218172664',
            ),
            DetailsWidget(
              title: 'City',
              value: 'Nashik, MH, India',
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsWidget(
              title: 'Age',
              value: '24',
            ),
            DetailsWidget(
              title: 'Degree',
              value: 'BE CSE',
            ),
            DetailsWidget(
              title: 'Email',
              value: 'pratiksatishpawar@gmail.com',
            ),
          ],
        ),
      ],
    );
  }
}

class DetailsWidget extends StatelessWidget {
  final String title;
  final String value;

  const DetailsWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'icons8-forward-48.png',
          color: Palette.primaryColor,
          height: 16,
          width: 16,
        ),
        FittedBox(
          child: RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
                text: ' $title: ',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Palette.titleColor),
                children: <TextSpan>[
                  TextSpan(
                    text: value,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Palette.subTitleColor),
                  )
                ]),
          ),
        )
      ],
    );
  }
}
