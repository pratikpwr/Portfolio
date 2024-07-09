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
      designation: 'Senior Flutter Developer',
      period: 'July 2023 - Present',
      company: 'Eigital (EatOS), USA (Remote)',
      details: [
        '   - Integrated various physical card readers for payment processing, enabling merchants to select more cost-effective payment platforms, thereby reducing transaction costs by 12%.\n'
            '   - Increased the crash-free rate from 82% to 94% through effective bug fixing and optimization techniques.\n'
        '   - Implemented multiple features on native platforms, enhancing app functionality and user experience.'
      ],
    ),
    ExperienceModel(
      designation: 'MOBILE APPLICATION DEVELOPER',
      period: 'December 2021 - July 2023',
      company: 'FarmSetu Technologies, Nashik',
      details: [
        '   - Played a key role in the early project setup, adding essential components like flavors, analytics, sentry, notifications, and payment integrations.\n'
            '   - Developed a Mason template for Dart code generation, reducing boilerplate coding time from 1 hour to 5 minutes, enhancing development efficiency\n'
            '   - Built launchpads such as e-commerce and elearning, achieving a 30% increase in weekly active users.\n'
      ],
    ),
    ExperienceModel(
      designation: 'SOFTWARE DEVELOPER',
      period: 'January 2021 - November 2021',
      company: 'DreamCare Developers, Pune',
      details: [
        '   - Enhanced the Nearme Flutter app by resolving issues and introducing new features, significantly improving user experience and app performance by 20%.\n'
            '   - Designed UI/UX and Developed the Police Patil project, digitalizing activity tracking for village-assigned individuals.\n'
            '   - Created a user-friendly dashboard using Flutter web for efficient administration by the police. Also implemented SEO features in the Nearme Flutter web app, increasing site visibility and user acquisition.'
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
