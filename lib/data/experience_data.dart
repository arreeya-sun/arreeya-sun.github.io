import 'package:portfolio_app/models/experience.dart';

const List<Experience> experiences = [
  Experience(
    role: 'Mobile Developer (Mid-Level)',
    company: '7 Solutions Company Limited',
    employmentType: 'Full-time',
    location: 'Bangkok',
    periodLabel: 'Aug 2024 - Present',
    duration: '2 yrs',
    summary:
        'Built and maintained the RizzUp app using Flutter and Clean Architecture, starting with GetX and later adopting Cubit for state management, working in Scrum sprints.',
    details: [
      'Developed most of the app\'s core features, handling both UI and API integration',
      'Sole mobile developer for 5 months, owning the full release process, from build to deployment and app store submissions',
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
