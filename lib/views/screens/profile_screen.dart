import 'package:flutter/material.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/widgets/about_info.dart';
import 'package:portfolio/views/widgets/dropa_a_line.dart';
import 'package:portfolio/views/widgets/my_skills.dart';
import 'package:portfolio/views/widgets/nav_header.dart';
import 'package:portfolio/views/widgets/profile_info.dart';
import 'package:portfolio/views/widgets/responsive_handler_widget.dart';
import 'package:portfolio/views/widgets/social_info.dart';

class ProfileScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final totalSize = MediaQuery.of(context).size;
    return ResponsiveWidget(
        largeScreen: Scaffold(
      key: _scaffoldKey,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              centerTitle: true,
              title: Text(
                'Pratik Pawar',
                style: TextStyle(
                    color: Palette.titleColor, fontWeight: FontWeight.w500),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.menu_rounded,
                  color: Palette.titleColor,
                ),
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                },
              ))
          : null,
      drawer: ResponsiveWidget.isSmallScreen(context)
          ? Drawer(
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  NavButton(
                    text: 'Home',
                    onTap: () {},
                  ),
                  NavButton(
                    text: 'About',
                    onTap: () {},
                  ),
                  NavButton(
                    text: 'Skills',
                    onTap: () {},
                  ),
                  NavButton(
                    text: 'Projects',
                    onTap: () {},
                  ),
                  NavButton(
                    text: 'Contact',
                    onTap: () {},
                  )
                ],
              ),
            )
          : null,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: AnimatedPadding(
          padding: EdgeInsets.symmetric(
              horizontal: ResponsiveWidget.isSmallScreen(context)
                  ? totalSize.height * 0.1
                  : totalSize.height * 0.2,
              vertical: totalSize.height * 0.015),
          duration: Duration(seconds: 1),
          child: ResponsiveWidget(
            largeScreen: Column(
              children: [
                if (!ResponsiveWidget.isSmallScreen(context)) NavHeader(),
                SizedBox(
                  height: ResponsiveWidget.isSmallScreen(context)
                      ? totalSize.height * 0.05
                      : totalSize.height * 0.15,
                ),
                ProfileInfo(),
                SizedBox(
                  height: totalSize.height * 0.2,
                ),
                AboutMe(),
                SizedBox(
                  height: totalSize.height * 0.2,
                ),
                MySkills(),
                SizedBox(
                  height: totalSize.height * 0.2,
                ),
                DropALine(),
                SizedBox(
                  height: totalSize.height * 0.2,
                ),
                SocialInfo()
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
