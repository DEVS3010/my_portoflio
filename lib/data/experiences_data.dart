import '../models/experience_model.dart';

final List<ExperienceModel> experiences = [
  ExperienceModel(
    title: 'Lead Flutter Developer',
    company: 'Travel Car Rental',
    description:
        'Led a team to build adaptive, secure, cross-platform apps for Windows, web, and mobile. Spearheaded performance optimization, applied TDD and clean architecture, and represented the company at global events including LEAP2024 and Intersec.',
    technologies: [
      'Flutter',
      'Dart',
      'Windows',
      'Web',
      'Firebase',
      'API Integration',
      'Clean Architecture',
      'TDD',
    ],
    duration: 'Feb 2023 – Present',
    location: 'Saudi Arabia · On-site',
    isCurrent: true,
  ),

  ExperienceModel(
    title: 'Flutter Developer',
    company: 'Bird Cloud',
    description:
        'Led the development of two Quran-focused apps with features like Qibla via camera, nearest mosques, and Tafsir. Improved performance by 100x. Took lead for 3 months ensuring on-time delivery and enhanced user satisfaction.',
    technologies: [
      'Flutter',
      'Dart',
      'Firebase',
      'SQFLite',
      'Google Maps',
      'Git',
    ],
    duration: 'Sep 2021 – Jun 2022',
    location: 'Remote',
  ),

  ExperienceModel(
    title: 'Core Team Member',
    company: 'Google Developer Student Club (GDSC - DTU)',
    description:
        'Contributed to open-source initiatives and helped organize workshops and hackathons focused on Flutter and mobile development.',
    technologies: ['Flutter', 'Team Collaboration', 'Open Source'],
    duration: 'Nov 2020 – Mar 2021',
    location: 'Al Minya, Egypt',
  ),
];
