import 'package:flutter/foundation.dart';

class EducationModel {
  String degree;
  String period;
  String institute;
  String grades;

  EducationModel({
    @required this.degree,
    @required this.period,
    @required this.institute,
    @required this.grades,
  });
}

class ExperienceModel {
  String designation;
  String period;
  String company;
  List<String> details;

  ExperienceModel({
    @required this.designation,
    @required this.period,
    @required this.company,
    @required this.details,
  });
}

class ResumeData {
  List<EducationModel> education = [
    EducationModel(
        degree: 'BE, COMPUTER SCIENCE & ENGINEERING',
        period: '2018 - 2022',
        institute: 'Sandip Institute Of Technology And Research Center, Nashik',
        grades: '8'),
    EducationModel(
        degree: 'HIGHER EDUCATION (HSC)',
        period: '2016 - 2018',
        institute: 'Janata Jr College, Mulher',
        grades: '75%'),
    EducationModel(
        degree: 'SCHOOL EDUCATION (SSC)',
        period: '2010 - 2016',
        institute: 'Siddhi English Medium School, Taharabad',
        grades: '93%'),
  ];

  List<ExperienceModel> experiences = [
    ExperienceModel(
        designation: 'FLUTTER APP DEVELOPER',
        period: 'September 2020 - March 2021',
        company: 'ISOLS Group, Gurgaon',
        details: [
          '   - Developed Flutter Apps required by clients\n'
          '   - Completed all the projets before Deadline\n'
          '   - Deployed Apps to PlayStore and Apple App Store'
        ]),
    ExperienceModel(
        designation: 'JR. FLUTTER DEVELOPER (INTERN)',
        period: 'July 2020 - September 2020',
        company: 'Tvish E-Commerce, Bangalore',
        details: [
          '   - Developed E-commerce Flutter App.\n'
          '   - Solved Bugs and Errors in App and Added new Features\n'
          '   - Worked with the team'
        ])
  ];

// education() {
//   return edu;
// }
//
// experience() {
//   return experiences;
// }
}
