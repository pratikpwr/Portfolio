import 'package:flutter/material.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/widgets/about_info.dart';
import 'package:portfolio/views/widgets/dropa_a_line.dart';
import 'package:portfolio/views/widgets/my_skills.dart';
import 'package:portfolio/views/widgets/nav_button.dart';
import 'package:portfolio/views/widgets/nav_header.dart';
import 'package:portfolio/views/widgets/profile_info.dart';
import 'package:portfolio/views/widgets/responsive_handler_widget.dart';
import 'package:portfolio/views/widgets/social_info.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final _scrollController = ScrollController();

  ScrollToId _scrollToId;

  void _scrollListener() {
    print(_scrollToId.idPosition());
  }

  @override
  void initState() {
    super.initState();
    _scrollToId = ScrollToId(scrollController: _scrollController);

    _scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    final totalSize = MediaQuery.of(context).size;
    return ResponsiveWidget(
        largeScreen: Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [
          AnimatedPadding(

            padding: EdgeInsets.symmetric(
                horizontal: ResponsiveWidget.isSmallScreen(context)
                    ? totalSize.height * 0.1
                    : totalSize.height * 0.2,
                vertical: totalSize.height * 0.015),
            duration: Duration(seconds: 1),
            child: ResponsiveWidget(
              largeScreen: InteractiveScrollViewer(
                scrollToId: _scrollToId,
                children: <ScrollContent>[
                  ScrollContent(
                      id: 'profile',
                      child: Column(
                        children: [
                          SizedBox(
                            height: ResponsiveWidget.isSmallScreen(context)
                                ? totalSize.height * 0.05
                                : totalSize.height * 0.15,
                          ),
                          ProfileInfo(),
                          SizedBox(
                            height: totalSize.height * 0.2,
                          ),
                        ],
                      )),
                  ScrollContent(
                      id: 'about',
                      child: Column(
                        children: [
                          AboutMe(),
                          SizedBox(
                            height: totalSize.height * 0.2,
                          ),
                        ],
                      )),
                  ScrollContent(
                      id: 'skills',
                      child: Column(
                        children: [
                          MySkills(),
                          SizedBox(
                            height: totalSize.height * 0.18,
                          ),
                        ],
                      )),
                  ScrollContent(
                      id: 'drop_a_line',
                      child: Column(
                        children: [
                          DropALine(),
                          SizedBox(
                            height: totalSize.height * 0.2,
                          ),
                          SocialInfo(),
                        ],
                      ))
                ],
              ),
            ),
          ),
          !ResponsiveWidget.isSmallScreen(context)
              ? Container(
                  height: totalSize.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      NavButton(
                        text: 'Home',
                        icon: Icons.home_outlined,
                        onTap: () {
                          _scrollToId.animateTo('profile',
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease);
                        },
                      ),
                      NavButton(
                        text: 'About',
                        icon: Icons.person_outline_rounded,
                        onTap: () {
                          _scrollToId.animateTo('about',
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease);
                        },
                      ),
                      NavButton(
                        text: 'Resume',
                        icon: Icons.insert_drive_file_outlined,
                        onTap: () {
                          print('skills');
                          _scrollToId.animateTo('skills',
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease);
                        },
                      ),
                      NavButton(
                        text: 'Projects',
                        icon: Icons.work_outline_rounded,
                        onTap: () {},
                      ),
                      NavButton(
                        text: 'Contact',
                        icon: Icons.mail_outline_rounded,
                        onTap: () {
                          _scrollToId.animateTo('drop_a_line',
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease);
                        },
                      )
                    ],
                  ),
                )
              : Stack(),
        ],
      ),
    ));
  }
}
