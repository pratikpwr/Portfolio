import 'package:flutter/material.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/widgets/sections/about_info.dart';
import 'package:portfolio/views/widgets/sections/dropa_a_line.dart';
import 'package:portfolio/views/widgets/sections/my_skills.dart';
import 'package:portfolio/views/widgets/buttons/nav_button.dart';
import 'package:portfolio/views/widgets/sections/profile_info.dart';
import 'package:portfolio/views/widgets/responsive_handler_widget.dart';
import 'package:portfolio/views/widgets/sections/social_info.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final _scrollController = ScrollController();

  ScrollToId _scrollToId;

  void _scrollListener() {}

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
      // floatingActionButton: _floatingActionButton(),
      body: Stack(
        children: [
          AnimatedPadding(
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveWidget.isSmallScreen(context)
                  ? totalSize.height * 0.1
                  : totalSize.height * 0.2,
            ),
            duration: Duration(milliseconds: 400),
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
                                : totalSize.height * 0.2,
                          ),
                          ProfileInfo(),
                          _space01(totalSize),
                        ],
                      )),
                  ScrollContent(
                      id: 'about',
                      child: Column(
                        children: [
                          _space01(totalSize),
                          AboutMe(),
                        ],
                      )),
                  ScrollContent(
                      id: 'skills',
                      child: Column(
                        children: [
                          _space01(totalSize),
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
                          _space01(totalSize),
                          _space01(totalSize),
                          SocialInfo(),
                        ],
                      ))
                ],
              ),
            ),
          ),
          !ResponsiveWidget.isSmallScreen(context)
              ? _navBar(totalSize)
              : Stack(),
        ],
      ),
    ));
  }

  FloatingActionButton _floatingActionButton() {
    return FloatingActionButton(
      child: Icon(Icons.arrow_upward_rounded),
      backgroundColor: Palette.primaryColor,
      onPressed: () {
        _scrollToId.animateTo('profile',
            duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      },
    );
  }

  SizedBox _space01(Size totalSize) {
    return SizedBox(
      height: totalSize.height * 0.1,
    );
  }

  Widget _navBar(Size totalSize) {
    return Container(
      height: totalSize.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavButton(
            text: 'Home',
            icon: Icons.home_outlined,
            onTap: () {
              _scrollToId.animateTo('profile',
                  duration: Duration(milliseconds: 500), curve: Curves.easeIn);
            },
          ),
          NavButton(
            text: 'About',
            icon: Icons.person_outline_rounded,
            onTap: () {
              _scrollToId.animateTo('about',
                  duration: Duration(milliseconds: 500), curve: Curves.easeIn);
            },
          ),
          NavButton(
            text: 'Resume',
            icon: Icons.insert_drive_file_outlined,
            onTap: () {
              _scrollToId.animateTo('skills',
                  duration: Duration(milliseconds: 500), curve: Curves.easeIn);
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
                  duration: Duration(milliseconds: 500), curve: Curves.easeIn);
            },
          )
        ],
      ),
    );
  }
}
