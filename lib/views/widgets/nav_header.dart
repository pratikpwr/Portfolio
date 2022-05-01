import 'package:flutter/material.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/widgets/responsive_handler_widget.dart';

class NavHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final totalSize = MediaQuery.of(context).size;
    return ResponsiveWidget(
        largeScreen: Row(
      mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
          ? MainAxisAlignment.center
          : MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Logo(),
        // if (!ResponsiveWidget.isSmallScreen(context))
        // Row(
        //   children: [
        //     NavButton(
        //       text: 'Home',
        //       onTap: () {},
        //     ),
        //     SizedBox(
        //       width: totalSize.width * 0.02,
        //     ),
        //     NavButton(
        //       text: 'About',
        //       onTap: () {},
        //     ),
        //     SizedBox(
        //       width: totalSize.width * 0.02,
        //     ),
        //     NavButton(
        //       text: 'Skills',
        //       onTap: () {},
        //     ),
        //     SizedBox(
        //       width: totalSize.width * 0.02,
        //     ),
        //     NavButton(
        //       text: 'Projects',
        //       onTap: () {},
        //     ),
        //     SizedBox(
        //       width: totalSize.width * 0.02,
        //     ),
        //     NavButton(
        //       text: 'Contact',
        //       onTap: () {},
        //     )
        //   ],
        // )
      ],
    ));
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final totalSize = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      alignment: Alignment.center,
      height: totalSize.height * 0.07,
      width: totalSize.height * 0.07,
      padding: EdgeInsets.all(totalSize.height * 0.009),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Palette.primaryColor),
      child: Text(
        'P.',
        style: TextStyle(
            color: Colors.white, fontSize: 26, fontWeight: FontWeight.w600),
      ),
    );
  }
}
