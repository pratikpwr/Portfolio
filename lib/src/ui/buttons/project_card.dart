import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/shared_methods.dart';
import '../../features/profile/models/project_model.dart';
import '../colors/palette.dart';
import '../responsive_handler_widget.dart';

class ProjectCard extends StatefulWidget {
  final ProjectModel project;

  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard>
    with SingleTickerProviderStateMixin {
  bool isHover = false;

  late AnimationController _animationController;
  late Animation<double> _curve;
  late Animation<double> _widthAnimation;
  late Animation<double> _heightAnimation;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    var _totalSize = MediaQuery.of(context).size;
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _curve = CurvedAnimation(curve: Curves.ease, parent: _animationController);
    _widthAnimation = Tween<double>(
            begin: 190,
            end: ResponsiveWidget.isLargeScreen(context)
                ? _totalSize.width * 0.5
                : _totalSize.width)
        .animate(_curve);
    _heightAnimation = Tween<double>(
            begin: 108,
            end: ResponsiveWidget.isLargeScreen(context)
                ? _totalSize.height * 0.5
                : _totalSize.height)
        .animate(_curve);
    _opacity = Tween<double>(begin: 0, end: 1).animate(_curve);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var totalSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      height: totalSize.height,
      width: totalSize.width,
      decoration: BoxDecoration(boxShadow: [
        isHover
            ? BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(5, 7),
                spreadRadius: 1)
            : BoxShadow(
                color: Colors.white,
                blurRadius: 0,
                offset: Offset(0, 0),
                spreadRadius: 0)
      ]),
      child: InkWell(
        onTap: () {
          _projectDialog();
        },
        onHover: (isHovered) {
          if (isHovered) {
            setState(() {
              isHover = true;
            });
            _animationController.forward();
          } else {
            setState(() {
              isHover = false;
            });
            _animationController.reverse();
          }
        },
        child: Stack(
          children: [
            Hero(
              tag: widget.project.url,
              child: Image.asset(
                widget.project.imageUrl[0],
                height: totalSize.height,
                width: totalSize.width,
                fit: BoxFit.cover,
              ),
            ),
            isHover
                ? Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: AnimatedBuilder(
                          animation: _animationController,
                          builder: (context, child) {
                            return Opacity(
                              opacity: _opacity.value,
                              child: _onHoverContainer(),
                            );
                          }),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }

  _projectDialog() {
    return showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Colors.white,
            child: Stack(
              children: [
                ResponsiveWidget.isSmallScreen(context)
                    ? Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width * 0.98,
                        decoration: BoxDecoration(
                          color: Palette.canvasColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Hero(
                              tag: widget.project.url,
                              child: Image.asset(
                                widget.project.imageUrl[0],
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.width * 0.8,
                              ),
                            ),
                            Text(
                              widget.project.projectName.toUpperCase(),
                              style: GoogleFonts.mukta(
                                  fontSize: 22,
                                  color: Palette.titleColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            _tags(color: Palette.primaryColor),
                            SizedBox(
                              height: 6,
                            ),
                            githubButton(),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              widget.project.desc,
                              textAlign: TextAlign.center,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.mukta(
                                  fontSize: 16, color: Palette.subTitleColor),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        height: MediaQuery.of(context).size.height * 0.85,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: Palette.canvasColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.all(18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _iconButton(
                                    icon: 'icons8-back-48.png', onTap: () {}),
                                Hero(
                                  tag: widget.project.url,
                                  child: Image.asset(
                                    widget.project.imageUrl[0],
                                    height: MediaQuery.of(context).size.height *
                                        0.45,
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                _iconButton(
                                    icon: 'icons8-forward-48.png',
                                    onTap: () {}),
                              ],
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    widget.project.projectName.toUpperCase(),
                                    style: GoogleFonts.mukta(
                                        fontSize: 28,
                                        color: Palette.titleColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  _tags(color: Palette.primaryColor),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  githubButton(),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  SelectableText(
                                    widget.project.desc,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mukta(
                                        fontSize: 18,
                                        color: Palette.subTitleColor),
                                  ),
                                ])
                          ],
                        ),
                      ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: IconButton(
                    icon: Image.asset(
                      'cancel.png',
                      // 'icons8-x-48.png',
                      color: Palette.titleColor,
                      height: 16,
                      width: 16,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                )
              ],
            ),
          );
        });
  }

  Widget githubButton() {
    return InkWell(
      onTap: () {
        SharedMethods().launchUrl(url: widget.project.url);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Palette.titleColor)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'github.png',
              height: 18,
              width: 18,
              color: Palette.titleColor,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              'View Code',
              style: GoogleFonts.mukta(fontSize: 18, color: Palette.titleColor),
            )
          ],
        ),
      ),
    );
  }

  InkWell _iconButton({
    required String icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        child: Image.asset(
          icon,
          color: Colors.white,
          height: 32,
          width: 32,
        ),
        decoration:
            BoxDecoration(color: Palette.primaryColor, shape: BoxShape.circle),
      ),
    );
  }

  Widget _tags({required Color color}) {
    return Container(
      height: 30,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.project.tags.length,
        itemBuilder: (context, index) {
          return FittedBox(
            child: Text(
              "  ${widget.project.tags[index].toUpperCase()}  ",
              style: GoogleFonts.mukta(
                  fontSize: 18, fontWeight: FontWeight.w500, color: color),
            ),
          );
        },
      ),
    );
  }

  Container _onHoverContainer() {
    return Container(
      height: _heightAnimation.value,
      width: _widthAnimation.value,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white70,
          image: DecorationImage(image: AssetImage('frame.png'))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Text(
              widget.project.projectName.toUpperCase(),
              style: GoogleFonts.mukta(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Palette.primaryColor),
            ),
          ),
          _tags(color: Palette.titleColor)
        ],
      ),
    );
  }
}
