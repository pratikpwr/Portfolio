import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/palette.dart';
import 'package:portfolio/views/widgets/responsive_handler_widget.dart';

class ProjectCard extends StatefulWidget {
  final ProjectModel project;

  const ProjectCard({
    Key key,
    @required this.project,
  }) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard>
    with SingleTickerProviderStateMixin {
  bool isHover = false;

  AnimationController _animationController;
  Animation _curve;
  Animation _widthAnimation;
  Animation _heightAnimation;
  Animation _opacity;

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
        onTap: () {},
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
            Image.asset(
              widget.project.imageUrl[0],
              height: totalSize.height,
              width: totalSize.width,
              fit: BoxFit.cover,
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
                              child: _stackContainer(),
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

  Container _stackContainer() {
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
          Container(
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
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Palette.titleColor),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
