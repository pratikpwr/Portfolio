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

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

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
                offset: Offset(2, 3),
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
          } else {
            setState(() {
              isHover = false;
            });
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
                ? Container(
                    height: totalSize.height,
                    width: totalSize.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.white70),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.project.projectName.toUpperCase(),
                          style: GoogleFonts.mukta(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Palette.primaryColor),
                        ),
                        Container(
                          height: 30,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: widget.project.tags.length,
                            itemBuilder: (context, index) {
                              return Text(
                                "  ${widget.project.tags[index].toUpperCase()}  ",
                                style: GoogleFonts.mukta(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Palette.titleColor),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
