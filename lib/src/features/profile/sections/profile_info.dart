import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui/buttons/social_button.dart';
import '../../../ui/colors/palette.dart';
import '../../../ui/responsive_handler_widget.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ProfilePic(),
          Intro(),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfilePic(),
          SizedBox(
            height: 40,
          ),
          Intro()
        ],
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * 0.3
          : MediaQuery.of(context).size.width * 0.3,
      width: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * 0.3
          : MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
          color: Palette.lightPrimaryColor,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              'pratik.png',
            ),
            fit: BoxFit.cover,
          )),
    );
  }
}

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final totalSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            'HELLO!',
            style: GoogleFonts.montserrat(
                color: Palette.subTitleColor, fontSize: 24),
          ),
        ),
        FittedBox(
          child: Text(
            'I\'m Pratik Pawar',
            style: GoogleFonts.poppins(
                color: Palette.titleColor,
                fontWeight: FontWeight.bold,
                fontSize: ResponsiveWidget.isMediumScreen(context) ? 46 : 54),
          ),
        ),
        TypewriterAnimatedTextKit(
          text: const [
            'Flutter Enthusiast',
            'Mobile Application Developer',
            'Freelancer',
          ],
          textStyle: const TextStyle(
            color: Palette.primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
          textAlign: TextAlign.start,
          speed: Duration(milliseconds: 150),
          pause: Duration(milliseconds: 150),
        ),
        SizedBox(
          height: totalSize.height * 0.03,
        ),
        Row(
          children: [
            SocialButton(
              url: 'https://www.github.com/pratikpwr',
              iconUrl: 'github.png',
            ),
            SizedBox(
              width: 10,
            ),
            SocialButton(
              url: 'https://www.linkedin.com/in/pratikpwr/',
              iconUrl: 'linkedin.png',
            ),
            SizedBox(
              width: 10,
            ),
            SocialButton(
              url: 'https://www.instagram.com/_.pratikpawar._/',
              iconUrl: 'insta.png',
            ),
          ],
        ),
        // SizedBox(
        //   height: totalSize.height * 0.02,
        // ),
        // CustomButton(
        //   text: 'CONTACT ME',
        //   onTap: () {},
        // )
      ],
    );
  }
}
