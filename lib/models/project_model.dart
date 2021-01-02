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
          'https://cdn.dribbble.com/users/2168386/screenshots/14855310/media/24762aceb17d00bcbafb8992f0dc20aa.png?compress=1&resize=1000x750'
        ],
        desc: 'Read news in short',
        url: ''),
    ProjectModel(
        projectName: 'Timetable App',
        tags: ['Flutter', 'Dart', 'Flask', 'Python', 'Rest API'],
        imageUrl: [
          'https://cdn.dribbble.com/users/2168386/screenshots/14855310/media/24762aceb17d00bcbafb8992f0dc20aa.png?compress=1&resize=1000x750'
        ],
        desc: 'E-commerce',
        url: ''),
    ProjectModel(
        projectName: 'All Kart',
        tags: ['Flutter', 'Dart', 'Firebase'],
        imageUrl: [
          'https://cdn.dribbble.com/users/2168386/screenshots/14855310/media/24762aceb17d00bcbafb8992f0dc20aa.png?compress=1&resize=1000x750'
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
          'https://cdn.dribbble.com/users/2168386/screenshots/14855310/media/24762aceb17d00bcbafb8992f0dc20aa.png?compress=1&resize=1000x750'
        ],
        desc: 'Music App Complex UI',
        url: ''),
    ProjectModel(
        projectName: 'Flutter Animations',
        tags: ['Flutter', 'Dart', 'Flutter UI'],
        imageUrl: [
          'https://cdn.dribbble.com/users/2168386/screenshots/14855310/media/24762aceb17d00bcbafb8992f0dc20aa.png?compress=1&resize=1000x750'
        ],
        desc: 'A Flutter App to learn Animations',
        url: ''),
    ProjectModel(
        projectName: 'My PortFolio',
        tags: ['Flutter', 'Dart', 'Flutter Web'],
        imageUrl: [
          'https://cdn.dribbble.com/users/2168386/screenshots/14855310/media/24762aceb17d00bcbafb8992f0dc20aa.png?compress=1&resize=1000x750'
        ],
        desc: 'My Portfolio App',
        url: ''),
    ProjectModel(
        projectName: 'Nrityosava',
        tags: ['Flutter', 'Dart', 'Internship'],
        imageUrl: [
          'https://cdn.dribbble.com/users/2168386/screenshots/14855310/media/24762aceb17d00bcbafb8992f0dc20aa.png?compress=1&resize=1000x750'
        ],
        desc: 'App To learn katthak',
        url: ''),
    ProjectModel(
        projectName: 'AAFM India',
        tags: ['Flutter', 'Dart', 'Internship', 'Rest API'],
        imageUrl: [
          'https://cdn.dribbble.com/users/2168386/screenshots/14855310/media/24762aceb17d00bcbafb8992f0dc20aa.png?compress=1&resize=1000x750'
        ],
        desc: 'E-commerce',
        url: ''),
    ProjectModel(
        projectName: 'How to crack ssb',
        tags: ['Flutter', 'Dart', 'Web-to-flutter'],
        imageUrl: [
          'https://cdn.dribbble.com/users/2168386/screenshots/14855310/media/24762aceb17d00bcbafb8992f0dc20aa.png?compress=1&resize=1000x750'
        ],
        desc: 'E-commerce',
        url: ''),
  ];

  List<ProjectModel> getProjects() {
    return projects;
  }
}
