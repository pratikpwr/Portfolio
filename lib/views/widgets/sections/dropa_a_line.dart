import 'package:flutter/material.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/widgets/PictureIllustration.dart';
import 'package:portfolio/views/widgets/heading_underline.dart';
import 'package:portfolio/views/widgets/responsive_handler_widget.dart';
import 'package:portfolio/views/widgets/rich_text_heading.dart';

class DropALine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // RichTextHeading(
        //   text1: 'Drop A',
        //   text2: 'Line',
        //   fontSize: 32,
        // ),
        // HeadingUnderline(),
        // SizedBox(
        //   height: 32,
        // ),
        ResponsiveWidget(
          largeScreen: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PictureIllustration(
                image: 'mail_ill.png',
              ),
              ContactForm()
            ],
          ),
          smallScreen: Column(
            children: [
              PictureIllustration(
                image: 'mail_ill.png',
              ),
              ContactForm()
            ],
          ),
        )
      ],
    );
  }
}

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.width * 0.6
          : MediaQuery.of(context).size.width * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FittedBox(
                child: RichTextHeading(
                  text1: 'Drop A',
                  text2: 'Line',
                  fontSize: 32,
                ),
              ),
              HeadingUnderline(),
              SizedBox(
                height: 32,
              )
            ],
          ),
          ResponsiveWidget.isSmallScreen(context)
              ? Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'First Name',
                            hintStyle: TextStyle(color: Palette.subTitleColor)),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      padding: EdgeInsets.all(8),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Last Name',
                            hintStyle: TextStyle(color: Palette.subTitleColor)),
                      ),
                    )
                  ],
                )
              : Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'First Name',
                            hintStyle: TextStyle(color: Palette.subTitleColor)),
                      ),
                    ),
                    SizedBox(
                        //width: MediaQuery.of(context).size.width * 0.5,
                        ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      padding: EdgeInsets.all(8),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Last Name',
                            hintStyle: TextStyle(color: Palette.subTitleColor)),
                      ),
                    )
                  ],
                ),
          Container(
            width: ResponsiveWidget.isSmallScreen(context)
                ? MediaQuery.of(context).size.width * 0.5
                : MediaQuery.of(context).size.width * 0.25,
            padding: EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Palette.subTitleColor)),
            ),
          ),
          Container(
            //        MediaQuery.of(context).size.width * 0.35,
            padding: EdgeInsets.all(8),
            child: TextField(
              maxLines: 5,
              decoration: InputDecoration(
                  hintText: 'Type Your Message',
                  hintStyle: TextStyle(color: Palette.subTitleColor)),
            ),
          )
        ],
      ),
    );
  }
}
