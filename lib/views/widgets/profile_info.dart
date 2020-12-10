import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/widgets/custom_button.dart';
import 'package:portfolio/views/widgets/responsive_handler_widget.dart';

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
                fontSize: ResponsiveWidget.isMediumScreen(context) ? 46 : 50),
          ),
        ),
        Text(
          'Flutter Developer &\nMobile Application Developer',
          style: TextStyle(
              color: Palette.titleColor,
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
        SizedBox(
          height: totalSize.height * 0.02,
        ),
        CustomButton(
          text: 'HIRE ME',
          onTap: () {},
        )
      ],
    );
  }
}
