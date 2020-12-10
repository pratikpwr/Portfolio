import 'package:flutter/material.dart';
import 'package:portfolio/views/widgets/responsive_handler_widget.dart';

class PictureIllustration extends StatelessWidget {
  final String image;

  const PictureIllustration({
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(width: 12, color: Palette.lightPrimaryColor)
      ),
      child: Image.asset(
        image,
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.3
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.3
            : MediaQuery.of(context).size.width * 0.25,
      ),
    );
  }
}