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

// https://raw.githubusercontent.com/pratikpwr/Portfolio/blob/master/projects/
class ProjectList {
  List<ProjectModel> projects = [
    ProjectModel(
        projectName: 'SwipeUp News',
        tags: ['Flutter', 'Dart', 'Rest API'],
        imageUrl: ['swipeUp.png'],
        desc:
            'SwipeUp News App, Built a News app using Flutter. Used NewsAPI.org APIs for news. The app has features like Searching Topics, Reading News from Different Categories, and Specific Sources. The app also has a feature to read the detailed news on a website, for this I used the webView plugin provided by flutter packages. Used onboarding screens to explain how to use the App.Play Store Link -: https://play.google.com/store/apps/details?id=com.pratik.swipe_up_news',
        url: 'https://github.com/pratikpwr/SwipeUp-News'),
    ProjectModel(
        projectName: 'College Buddy',
        tags: ['Flutter', 'Dart', 'Flask', 'Python', 'Rest API'],
        imageUrl: ['collegeBuddy.png'],
        desc:
            'College Buddy, An App for college students to check out their timetable quickly. It shows ongoing and next lecture. in the app, teachers can upload timetable, Assignments, and notices. Students can stay updated with the notices by the college. The app is made in Flutter and Dart and for the backend, I used Flask and python RestAPI\'s.',
        url: 'https://github.com/pratikpwr/TimeTable-APP'),
    ProjectModel(
        projectName: 'All Kart',
        tags: ['Flutter', 'Dart', 'Firebase'],
        imageUrl: ['allKart.png'],
        desc:
            'AllKart App is an E-commerce Flutter app. In this app, I used Firebase as the backend of the app. I used the Flutter provider package for State Management. I added User Authentication and Animations in app.',
        url: 'https://github.com/pratikpwr/All-Kart'),
    // ProjectModel(
    //     projectName: 'Chat App',
    //     tags: ['Flutter', 'Dart', 'Firebase'],
    //     imageUrl: [
    //       'https://cdn.dribbble.com/users/2168386/screenshots/14855310/media/24762aceb17d00bcbafb8992f0dc20aa.png?compress=1&resize=1000x750'
    //     ],
    //     desc: 'Chatting App',
    //     url: 'https://github.com/pratikpwr/Chat-App'),
    ProjectModel(
        projectName: 'Music App UI',
        tags: ['Flutter', 'Dart', 'Flutter UI'],
        imageUrl: ['musicUI.png'],
        desc:
            'Music App Complex UI. Inspired by Dribble design by Alex Arutuynov',
        url: 'https://github.com/pratikpwr/MusicPlayer'),
    ProjectModel(
        projectName: 'Flutter Animations',
        tags: ['Flutter', 'Dart', 'Flutter UI'],
        imageUrl: ['flutterAnimations.png'],
        desc:
            'A Flutter App to learn Complex Animations.\n- Animated Container     - Aniamted List     - Hero Animation \n- Explicite Animation     - Tweens     - Tween Sequence\n- TweenAnimationBuilder',
        url: 'https://github.com/pratikpwr/Fllutter-Animations'),
    ProjectModel(
        projectName: 'My PortFolio',
        tags: ['Flutter', 'Dart', 'Flutter Web'],
        imageUrl: ['myPortfolio.png'],
        desc:
            'My Portfolio App, Made in Flutter Web, This site is Responsive for Mobile, Web and multiple screen sizes',
        url: 'https://pratikpwr.github.io/Portfolio/#/'),
    // ProjectModel(
    //     projectName: 'AR E-commerce',
    //     tags: ['XD', 'UI', 'UX'],
    //     imageUrl: [
    //       'https://cdn.dribbble.com/users/2168386/screenshots/14855310/media/24762aceb17d00bcbafb8992f0dc20aa.png?compress=1&resize=1000x750'
    //     ],
    //     desc: 'AR E-commerce App',
    //     url: ''),
    // ProjectModel(
    //     projectName: 'Nrityosava',
    //     tags: ['Flutter', 'Dart', 'Internship'],
    //     imageUrl: ['Nrityosava.png'],
    //     desc: 'App To learn katthak',
    //     url: ''),
    // ProjectModel(
    //     projectName: 'AAFM India',
    //     tags: ['Flutter', 'Dart', 'Internship', 'Rest API'],
    //     imageUrl: ['aafm.png'],
    //     desc: 'E-commerce',
    //     url: ''),
    // ProjectModel(
    //     projectName: 'How to crack ssb',
    //     tags: ['Flutter', 'Dart', 'Web-to-flutter'],
    //     imageUrl: ['ssb.png'],
    //     desc: 'E-commerce',
    //     url: ''),
  ];

  List<ProjectModel> getProjects() {
    return projects;
  }
}
