import 'package:flutter/material.dart';
import 'package:portfolio/views/widgets/heading_underline.dart';
import 'package:portfolio/views/widgets/rich_text_heading.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichTextHeading(
          text1: 'My',
          text2: 'Resume',
          fontSize: 32,
        ),
        HeadingUnderline(),

      ],
    );
  }
}
