import 'package:portfolio_app/models/experience.dart';

const List<Experience> experiences = [
  Experience(
    role: 'Mobile Developer (Mid-Level)',
    company: '7 Solutions Company Limited',
    employmentType: 'Full-time',
    location: 'Bangkok',
    periodLabel: 'Aug 2024 - Present',
    duration: '2 yrs 3 mos',
    summary:
        'Built and maintained Flutter apps using Clean Architecture, working closely with QA, PO, and backend teams in Scrum sprints, from RizzUp to the Thaimart marketplace.',
    details: [
      'Developed most of RizzUp\'s core features, handling both UI and API integration, and migrated state management from GetX to Cubit',
      'Sole mobile developer on RizzUp for 5 months, owning the mobile side end to end from development to production release',
      'Built the chat feature for Thaimart\'s buyer and seller apps and worked across 3 squads at the same time',
    ],
  ),
  Experience(
    role: 'Mobile Developer',
    company: 'Facgure Company Limited',
    employmentType: 'Full-time',
    location: 'Bangkok',
    periodLabel: 'May 2023 - Jul 2024',
    duration: '1 yr 3 mos',
    summary:
        'Built and maintained features across 4 apps using Flutter and Provider for state management.',
    details: [
      'Developed core features for iThesis, including real-time plagiarism tracking',
      'Delivered chat, real-time data, and bug fixes for client projects using Sendbird and Firebase',
    ],
  ),
  Experience(
    role: 'Salesforce Developer',
    company: 'I&I Group PLC',
    employmentType: 'Internship',
    location: 'Chiang Mai',
    locationType: 'Remote',
    periodLabel: 'May 2022 - Oct 2022',
    duration: '6 mos',
    summary:
        'Contributed to enterprise platform development across Salesforce and Sitecore.',
    details: [
      'Developed and customized features on Salesforce using Apex',
      'Built a webpage using Sitecore Experience Editor',
    ],
  ),
];
