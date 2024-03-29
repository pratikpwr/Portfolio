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
          SizedBox(
            height: 40,
          ),
          _smallIntro(),
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
          _smallIntro(),
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
      'I am an enthusiastic developer, having a ton of interest in Software Development and Design. Also, I am a Strong believer that imagination brings change and shows a path to develop something amazing and interesting.',
      style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Palette.subTitleColor),
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
                'I have the attitude of a learner, the courage of an entrepreneur and the thinking of an optimist, engraved inside me. I wish to be a leader in my community of people. From an engineering perspective, I have chosen \"Flutter Application Developer\" as my specialization fields to develop Cross Platform Apps.',
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
          title: 'Website',
          value: 'pratikpwr.github.io',
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
          value: '21',
        ),
        DetailsWidget(
          title: 'Degree',
          value: 'BE CSE',
        ),
        // DetailsWidget(
        //   title: 'Email',
        //   value: 'pratiksatishpawar@gmail.com',
        // ),
        DetailsWidget(
          title: 'Freelance',
          value: 'Available',
        ),
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
              title: 'Website',
              value: 'pratikpwr.github.io/',
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
              value: '21',
            ),
            DetailsWidget(
              title: 'Degree',
              value: 'BE CSE',
            ),
            DetailsWidget(
              title: 'Email',
              value: 'pratikdaregoan@gmail.com',
            ),
            DetailsWidget(
              title: 'Freelance',
              value: 'Available',
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
            text: TextSpan(
                text: ' $title:  ',
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
