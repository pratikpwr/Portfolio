import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui/colors/palette.dart';
import '../../../ui/heading_underline.dart';
import '../../../ui/responsive_handler_widget.dart';
import '../../../ui/rich_text_heading.dart';

class MySkills extends StatelessWidget {
  final Map<String, List<Skill>> skillCategories = {
    'Mobile Development': [
      Skill('Flutter', 'https://cdn.worldvectorlogo.com/logos/flutter.svg'),
      Skill('Dart', 'https://cdn.worldvectorlogo.com/logos/dart.svg'),
      Skill('Android', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Android_logo_2019.png/599px-Android_logo_2019.png'),
    ],
    'Architecture': [
      Skill('Clean \nArchitecture',),
      Skill('TDD', ),
      Skill('MVVM',),
    ],
    'State Management': [
      Skill('Bloc', 'https://bloclibrary.dev/_astro/bloc.DJLDGT9c_1KXLNj.svg'),
      Skill('Provider', 'https://cdn.worldvectorlogo.com/logos/dart.svg'),
      Skill('Riverpod',
          'https://miro.medium.com/v2/resize:fit:1400/0*VBfJrxBs11X8lKpB.png'),
    ],
    'APIs': [
      Skill(
          'REST APIs', 'https://cdn-icons-png.flaticon.com/512/603/603201.png'),
      Skill('GraphQL', 'https://graphqleditor.com/images/graphql.png'),
    ],
    'Tools': [
      Skill('Firebase', 'https://cdn.worldvectorlogo.com/logos/firebase-1.svg'),
      Skill('CI/CD',
          'https://www.eficode.com/hs-fs/hubfs/Eficode%202020%20site%20images/Hexagons/CI%20CD%20pipeline%20hexagon-2.png?width=600&name=CI%20CD%20pipeline%20hexagon-2.png'),
      Skill('Git/VC', 'https://cdn.worldvectorlogo.com/logos/git-icon.svg'),
      Skill('Flutter Flow',
          'https://hackathon.flutterflow.app/icons/Icon-192.png'),
      Skill('Jira', 'https://cdn.worldvectorlogo.com/logos/jira-1.svg'),
    ],
    'Familiar': [
      Skill('Java', 'https://cdn.worldvectorlogo.com/logos/java-4.svg'),
      Skill('Kotlin', 'https://cdn.worldvectorlogo.com/logos/kotlin-1.svg'),
      Skill('JavaScript',
          'https://cdn.worldvectorlogo.com/logos/javascript-1.svg'),
      Skill('Python', 'https://cdn.worldvectorlogo.com/logos/python-5.svg'),
      Skill('Flask', 'https://cdn.worldvectorlogo.com/logos/flask.svg'),
      Skill('Node.js', 'https://cdn.worldvectorlogo.com/logos/nodejs-icon.svg'),
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichTextHeading(
          text1: 'My',
          text2: 'Skills',
          fontSize: 32,
        ),
        HeadingUnderline(),
        SizedBox(
          height: 40,
        ),
        ResponsiveWidget(
          smallScreen: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              children: [
                CategorySection(
                    category: 'Mobile Development',
                    skills: skillCategories['Mobile Development']!),
                SizedBox(height: 16),
                CategorySection(
                    category: 'Architecture',
                    skills: skillCategories['Architecture']!),
                SizedBox(height: 16),
                CategorySection(
                    category: 'State Management',
                    skills: skillCategories['State Management']!),
                SizedBox(height: 16),
                CategorySection(
                    category: 'APIs', skills: skillCategories['APIs']!),
                SizedBox(height: 16),
                CategorySection(
                    category: 'Tools', skills: skillCategories['Tools']!),
                SizedBox(height: 16),
                CategorySection(
                    category: 'Familiar', skills: skillCategories['Familiar']!),
              ],
            ),
          ),
          largeScreen: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            child:Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CategorySection(
                          category: 'Mobile Development',
                          skills: skillCategories['Mobile Development']!),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: CategorySection(
                          category: 'Architecture',
                          skills: skillCategories['Architecture']!),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: CategorySection(
                          category: 'State Management',
                          skills: skillCategories['State Management']!),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CategorySection(
                          category: 'APIs', skills: skillCategories['APIs']!),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: CategorySection(
                          category: 'Tools', skills: skillCategories['Tools']!),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: CategorySection(
                          category: 'Familiar', skills: skillCategories['Familiar']!),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CategorySection extends StatelessWidget {
  final String category;
  final List<Skill> skills;

  const CategorySection(
      {Key? key, required this.category, required this.skills})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Palette.primaryColor,
          ),
        ),
        SizedBox(height: 12.0),
        Wrap(
          spacing: 12.0,
          runSpacing: 12.0,
          children: skills.map((skill) => SkillCard(skill: skill)).toList(),
        ),
      ],
    );
  }
}

class Skill {
  final String name;
  final String? logoUrl;

  Skill(this.name, [this.logoUrl]);
}

class SkillCard extends StatelessWidget {
  final Skill skill;

  const SkillCard({Key? key, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (skill.logoUrl != null)
            (skill.logoUrl?.split('.').lastOrNull == 'svg')
                ? SvgPicture.network(
                    skill.logoUrl!,
                    height: 50,
                    width: 50,
                    placeholderBuilder: (BuildContext context) =>
                        CircularProgressIndicator(),
                  )
                : Image.network(
                    skill.logoUrl!,
                    height: 50,
                    width: 50,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.error);
                    },
                  ),
          SizedBox(height: 8.0),
          Text(
            skill.name,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Palette.titleColor,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
