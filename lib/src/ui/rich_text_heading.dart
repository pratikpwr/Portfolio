import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors/palette.dart';

class RichTextHeading extends StatelessWidget {
  final String text1;
  final String text2;
  final double fontSize;
  final FontWeight fontWeight;

  const RichTextHeading({
    super.key,
    required this.text1,
    required this.text2,
    this.fontSize = 20,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text1,
        style: GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: Palette.titleColor,
        ),
        children: <TextSpan>[
          TextSpan(
            text: ' $text2',
            style: GoogleFonts.poppins(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: Palette.primaryColor),
          )
        ],
      ),
    );
  }
}
