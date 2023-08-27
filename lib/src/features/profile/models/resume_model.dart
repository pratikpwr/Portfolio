class EducationModel {
  String degree;
  String period;
  String institute;
  String grades;

  EducationModel({
    required this.degree,
    required this.period,
    required this.institute,
    required this.grades,
  });
}

class ExperienceModel {
  String designation;
  String period;
  String company;
  List<String> details;

  ExperienceModel({
    required this.designation,
    required this.period,
    required this.company,
    required this.details,
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
      designation: 'MOBILE APPLICATION DEVELOPER',
      period: 'December 2021 - July 2023',
      company: 'FarmSetu Technologies, Nashik',
      details: [
        '   - Played a key role in the early project setup, adding essential components like flavors, analytics, sentry, notifications, and payment integrations.\n'
            '   - Designed and executed complex features in close collaboration with the Product team.\n'
            '   - Created a Mason template for generating Dart code, substantially reducing boilerplate coding time from 1 hour to 5 minutes.\n',
        '   - Developed launchpads, including e-commerce and elearning, leading to a notable weekly active user increase of up to 30%.'
      ],
    ),
    ExperienceModel(
      designation: 'SOFTWARE DEVELOPER',
      period: 'January 2021 - November 2021',
      company: 'DreamCare Developers, Pune',
      details: [
        '   - Contributed to enhancing the Nearme Flutter app by addressing issues and introducing new features. Also, resolved bugs in Node.js Rest APIs.\n'
            '   - Enhanced the Nearme Flutter web app by implementing SEO features that boosted site visibility and attracted more users.\n'
            '   - Developed the Police Patil project, digitalizing activity tracking for village-assigned individuals. Also built a user-friendly dashboard using Flutter web for efficient administration by the police.'
      ],
    ),
    ExperienceModel(
      designation: 'FLUTTER DEVELOPER (INTERN)',
      period: 'August 2020 - March 2021',
      company: 'ISOLS Group, Gurgaon',
      details: [
        '   - Built 5-6 medium-scale Flutter applications, ensuring code quality and maintainability.\n'
            '   - Revamped Nrityosava Kathak application by improving UI, code quality, and optimizations and using proper state management which increased userbase by 1k and rating of 4.8 stars.\n'
            '   - Deployed Apps to PlayStore and Apple App Store'
      ],
    ),
    ExperienceModel(
      designation: 'JR. FLUTTER DEVELOPER (INTERN)',
      period: 'July 2020 - September 2020',
      company: 'Tvish E-Commerce, Bangalore',
      details: [
        '   - Developed E-commerce Flutter App.\n'
            '   - Solved Bugs and Errors in App and Added new Features\n'
            '   - Worked with the team'
      ],
    )
  ];
}
