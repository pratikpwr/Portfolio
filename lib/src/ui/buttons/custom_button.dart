import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/palette.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomButton({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Text(
          text.toUpperCase(),
          style: GoogleFonts.montserrat(color: Colors.white),
        ),
        color: Palette.deepPrimaryColor,
      ),
    );
  }
}
