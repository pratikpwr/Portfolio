import 'package:flutter/foundation.dart';

class ProjectModel {
  String projectName;
  List<String> imageUrl;
  String desc;
  String url;

  // String time;
  // String clientName;
  List<String> tags;

  ProjectModel(
      {@required this.projectName,
      @required this.imageUrl,
      @required this.desc,
      this.url,
      this.tags});
}

class ProjectList {
  List<ProjectModel> projects = [
    ProjectModel(
        projectName: 'SwipeUp News',
        tags: ['Flutter', 'Dart', 'Rest API'],
        imageUrl: [
          'https://raw.githubusercontent.com/pratikpwr/Portfolio/blob/master/projects/SwipeUp%20News%20(2).png'
        ],
        desc: 'Read news in short',
        url: ''),
    ProjectModel(
        projectName: 'College Buddy',
        tags: ['Flutter', 'Dart', 'Flask', 'Python', 'Rest API'],
        imageUrl: [
          'https://raw.githubusercontent.com/pratikpwr/Portfolio/blob/master/projects/College%20Buddy.png'
        ],
        desc: 'E-commerce',
        url: ''),
    ProjectModel(
        projectName: 'All Kart',
        tags: ['Flutter', 'Dart', 'Firebase'],
        imageUrl: [
          'https://raw.githubusercontent.com/pratikpwr/Portfolio/blob/master/projects/All%20Kart%20E-Commerce.png'
        ],
        desc: 'E-commerce',
        url: ''),
    ProjectModel(
        projectName: 'Chat App',
        tags: ['Flutter', 'Dart', 'Firebase'],
        imageUrl: [
          'https://cdn.dribbble.com/users/2168386/screenshots/14855310/media/24762aceb17d00bcbafb8992f0dc20aa.png?compress=1&resize=1000x750'
        ],
        desc: 'Chatting App',
        url: ''),
    ProjectModel(
        projectName: 'Music App UI',
        tags: ['Flutter', 'Dart', 'Flutter UI'],
        imageUrl: [
          'https://raw.githubusercontent.com/pratikpwr/Portfolio/blob/master/projects/Music%20app%20ui.png'
        ],
        desc: 'Music App Complex UI',
        url: ''),
    ProjectModel(
        projectName: 'Flutter Animations',
        tags: ['Flutter', 'Dart', 'Flutter UI'],
        imageUrl: [
          'https://raw.githubusercontent.com/pratikpwr/Portfolio/blob/master/projects/Flutter%20Animations.png'
        ],
        desc: 'A Flutter App to learn Animations',
        url: ''),
    ProjectModel(
        projectName: 'My PortFolio',
        tags: ['Flutter', 'Dart', 'Flutter Web'],
        imageUrl: [
          'https://raw.githubusercontent.com/pratikpwr/Portfolio/blob/master/projects/My%20PortFolio.png'
        ],
        desc: 'My Portfolio App',
        url: ''),
    ProjectModel(
        projectName: 'Nrityosava',
        tags: ['Flutter', 'Dart', 'Internship'],
        imageUrl: [
          'https://raw.githubusercontent.com/pratikpwr/Portfolio/blob/master/projects/Nrityosava.png'
        ],
        desc: 'App To learn katthak',
        url: ''),
    ProjectModel(
        projectName: 'AAFM India',
        tags: ['Flutter', 'Dart', 'Internship', 'Rest API'],
        imageUrl: [
          'https://raw.githubusercontent.com/pratikpwr/Portfolio/blob/master/projects/Untitled%20design.png'
        ],
        desc: 'E-commerce',
        url: ''),
    ProjectModel(
        projectName: 'How to crack ssb',
        tags: ['Flutter', 'Dart', 'Web-to-flutter'],
        imageUrl: [
          'https://raw.githubusercontent.com/pratikpwr/Portfolio/blob/master/projects/How%20to%20crack.png'
        ],
        desc: 'E-commerce',
        url: ''),
  ];

  List<ProjectModel> getProjects() {
    return projects;
  }
}
