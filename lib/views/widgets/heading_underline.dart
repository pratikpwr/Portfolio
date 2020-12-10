import 'package:flutter/material.dart';
import 'package:portfolio/palette.dart';

class HeadingUnderline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 2.5,
            width: 50,
            color: Palette.primaryColor,
            child: SizedBox(),
          ),
          Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
                border: Border.all(width: 2.5, color: Palette.primaryColor),
                shape: BoxShape.circle),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
                border: Border.all(width: 2.5, color: Palette.primaryColor),
                shape: BoxShape.circle),
          ),
          Container(
            height: 2.5,
            width: 50,
            color: Palette.primaryColor,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
