import 'package:Portfolio1/src/ui/responsive_handler_widget.dart';
import 'package:flutter/material.dart';

class PictureIllustration extends StatelessWidget {
  final String image;

  const PictureIllustration({super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * 0.3
          : MediaQuery.of(context).size.width * 0.35,
      width: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * 0.3
          : MediaQuery.of(context).size.width * 0.30,
    );
  }
}