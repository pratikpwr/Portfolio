import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

import '../../../ui/buttons/nav_button.dart';
import '../../../ui/colors/palette.dart';
import '../../../ui/responsive_handler_widget.dart';
import '../sections/about_info.dart';
import '../sections/drop_a_line.dart';
import '../sections/experiences.dart';
import '../sections/footer.dart';
import '../sections/my_skills.dart';
import '../sections/profile_info.dart';
import '../sections/projects.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final _scrollController = ScrollController();

  late ScrollToId _scrollToId;

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
      backgroundColor: Palette.canvasColor,
      // floatingActionButton: _floatingActionButton(),
      body: Stack(
        children: [
          if (kDebugMode)
            Text(
              _screenSize(context),
            ),
          Scrollbar(
            child: ResponsiveWidget(
              largeScreen: InteractiveScrollViewer(
                scrollToId: _scrollToId,
                children: <ScrollContent>[
                  ScrollContent(
                      id: 'profile',
                      child: AnimatedPadding(
                        padding: _animatedPadding(context),
                        duration: _animatedPaddingDuration(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: ResponsiveWidget.isSmallScreen(context)
                                  ? totalSize.height * 0.1
                                  : totalSize.height * 0.2,
                            ),
                            ProfileInfo(),
                            _space01(totalSize),
                          ],
                        ),
                      )),
                  ScrollContent(
                      id: 'about',
                      child: AnimatedPadding(
                          padding: _animatedPadding(context),
                          duration: _animatedPaddingDuration(),
                          child: Column(
                            children: [
                              _space01(totalSize),
                              AboutMe(),
                              _space01(totalSize),
                            ],
                          ))),
                  ScrollContent(
                      id: 'skills',
                      child: AnimatedPadding(
                          padding: _animatedPadding(context),
                          duration: _animatedPaddingDuration(),
                          child: Column(
                            children: [
                              _space01(totalSize),
                              MySkills(),
                              _space01(totalSize),
                            ],
                          ))),
                  ScrollContent(
                      id: 'resume',
                      child: AnimatedPadding(
                          padding: _animatedPadding(context),
                          duration: _animatedPaddingDuration(),
                          child: Column(
                            children: [
                              _space01(totalSize),
                              Experiences(),
                              _space01(totalSize),
                            ],
                          ))),
                  ScrollContent(
                      id: 'projects',
                      child: AnimatedPadding(
                          padding: _animatedPadding(context),
                          duration: _animatedPaddingDuration(),
                          child: Column(
                            children: [
                              _space01(totalSize),
                              Projects(),
                              _space01(totalSize),
                            ],
                          ))),
                  ScrollContent(
                      id: 'drop_a_line',
                      child: AnimatedPadding(
                          padding: _animatedPadding(context),
                          duration: _animatedPaddingDuration(),
                          child: Column(
                            children: [
                              _space01(totalSize),
                              DropALine(),
                              _space01(totalSize),
                            ],
                          ))),
                  ScrollContent(
                    id: 'footer',
                    child: Footer(),
                  )
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

  String _screenSize(BuildContext context) {
    if (ResponsiveWidget.isSmallScreen(context)) {
      return 'Small Screen';
    } else if (ResponsiveWidget.isMediumScreen(context)) {
      return 'MediumScreen';
    } else {
      return 'Large Screen';
    }
  }

  Duration _animatedPaddingDuration() => Duration(milliseconds: 400);

  EdgeInsets _animatedPadding(BuildContext context) {
    final _totalSize = MediaQuery.of(context).size;
    return EdgeInsets.only(
      left: ResponsiveWidget.isSmallScreen(context)
          ? _totalSize.width * 0.08
          : _totalSize.width * 0.17,
      right: ResponsiveWidget.isSmallScreen(context)
          ? _totalSize.width * 0.08
          : _totalSize.width * 0.14,
    );
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

  Widget _space01(Size totalSize) {
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
            icon: 'icons8-home-48.png',
            onTap: () {
              _scrollToId.animateTo('profile',
                  duration: Duration(milliseconds: 500), curve: Curves.easeIn);
            },
          ),
          NavButton(
            text: 'About',
            icon: 'profile.png',
            onTap: () {
              _scrollToId.animateTo('about',
                  duration: Duration(milliseconds: 500), curve: Curves.easeIn);
            },
          ),
          NavButton(
            text: 'Resume',
            icon: 'cv.png',
            onTap: () {
              _scrollToId.animateTo('resume',
                  duration: Duration(milliseconds: 500), curve: Curves.easeIn);
            },
          ),
          NavButton(
            text: 'Projects',
            icon: 'idea.png',
            onTap: () {
              _scrollToId.animateTo('projects',
                  duration: Duration(milliseconds: 500), curve: Curves.easeIn);
            },
          ),
          NavButton(
            text: 'Contact',
            icon: 'envelope.png',
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
