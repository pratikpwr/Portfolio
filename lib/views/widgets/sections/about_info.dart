import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/widgets/PictureIllustration.dart';
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
            height: 40,
          ),
          _smallIntro(),
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

  Text _smallIntro() {
    return Text(
      'I am an enthusiastic developer, having a ton of interest in product development and design. Also I am a strong believer that imagination brings the change and shows a path to develop something amazing and interesting.',
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
              : totalSize.width * 0.37,
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
          value: '21 March 2020',
        ),
        DetailsWidget(
          title: 'Website',
          value: 'mywebsite.com',
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
          value: '20',
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
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsWidget(
              title: 'BirthDay',
              value: '21 March 2020',
            ),
            DetailsWidget(
              title: 'Website',
              value: 'mywebsite.com',
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
              value: '20',
            ),
            DetailsWidget(
              title: 'Degree',
              value: 'BE CSE',
            ),
            DetailsWidget(
              title: 'Email',
              value: 'pratiksatishpawar@gmail.com',
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

  DetailsWidget({this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: Palette.primaryColor,
          size: 16,
        ),
        RichText(
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
        )
      ],
    );
  }
}
