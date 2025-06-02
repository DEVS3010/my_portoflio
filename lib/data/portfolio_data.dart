import '../core/image_assets.dart';
import '../models/profile_model.dart';
import '../models/social_model.dart';
import '../models/skill_model.dart';
import '../models/project_model.dart';
import '../models/experience_model.dart';

final profile = ProfileModel(
  name: 'Mahmoud Alaa',
  email: 'mahmoud3laa2210@gmail.com',
  cvLink: 'https://drive.google.com/your-cv-link',
  logo: 'assets/images/logo.png',
  photo: AppImages.png.profile,
  profile: 'Software Engineer',
  country: 'Saudi Arabia',

  profileSummary:
      'I build clean, scalable, and visually stunning Flutter applications for mobile, web, and desktop. My passion lies in transforming complex ideas into smooth, interactive experiences.',

  about:
      "I'm a dedicated Flutter developer with over 4 years of experience delivering high-quality, responsive apps across platforms. My work spans from leading teams to building apps used by thousands, such as Quran platforms, E-commerce apps, and productivity tools. I care deeply about clean architecture, performance, and creating user-first experiences. I’ve also represented my teams at events like Leap2024 and Intersec.",

  socialLinks: [
    SocialIModel(
      icon: AppImages.svg.github,
      link: 'https://github.com/MahmoudAlaa22',
    ),
    SocialIModel(
      icon: AppImages.svg.linkedIn,
      link: 'https://linkedin.com/in/MahmoudAlaa',
    ),
    SocialIModel(
      icon: AppImages.svg.email,
      link: 'mailto:mahmoud3laa2210@gmail.com',
    ),
  ],

  skills: [
    SkillModel(name: 'Flutter', icon: AppImages.svg.flutter),
    SkillModel(name: 'Dart', icon: AppImages.svg.dart),
    SkillModel(name: 'Firebase', icon: AppImages.svg.firebase),
    SkillModel(name: 'BLoC', icon: AppImages.svg.bloc),
    SkillModel(name: 'Figma', icon: AppImages.svg.figma),
    SkillModel(name: 'Git', icon: AppImages.svg.git),
    SkillModel(name: 'Github', icon: AppImages.svg.github),
    SkillModel(
      name: 'Google Play Console',
      icon: AppImages.svg.googlePlayConsole,
    ),
    SkillModel(name: 'Postman', icon: AppImages.svg.postman),
    SkillModel(name: 'VS Code', icon: AppImages.svg.vsCode),
    SkillModel(name: 'Android Studio', icon: AppImages.svg.androidStudio),
    SkillModel(name: 'SQFLITE & Hive', icon: AppImages.png.database),
    SkillModel(
      name: 'Augmented Reality(AR)',
      icon: AppImages.png.augmentedReality,
    ),
    SkillModel(name: 'TDD'),
    SkillModel(name: 'AR'),
    SkillModel(name: 'Animation'),
    SkillModel(name: 'Provider'),
    SkillModel(name: 'Rest API'),
    SkillModel(name: 'Localization'),
    SkillModel(name: 'Notification'),
    // SkillModel(name: 'Node.js', icon: 'assets/icons/nodejs.svg'),
    // SkillModel(name: 'PostgreSQL', icon: 'assets/icons/postgresql.svg'),
    // SkillModel(name: 'FastAPI', icon: 'assets/icons/fastapi.svg'),
  ],

  experiences: [
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
      isCurrent: true
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
  ],

  projects: [
    ProjectModel(
      title: 'Quran TV App',
      description:
          'Stream high-quality Quran channels with beautiful UI, dark mode, and live support.',
      image: AppImages.jpg.quranTV,
      images: [
        AppImages.jpg.quranTV,
        AppImages.jpg.quranTV,
        AppImages.jpg.quranTV,
        AppImages.jpg.quranTV,
      ],
      link: 'https://github.com/MahmoudAlaa22/QuranTV',
      tags: ['Flutter', 'Live Streaming', 'Clean UI'],
    ),
    ProjectModel(
      title: 'Quran TV App',
      description:
          'Stream high-quality Quran channels with beautiful UI, dark mode, and live support.',
      image: AppImages.jpg.quranTV,
      images: [AppImages.jpg.quranTV],
      link: 'https://github.com/MahmoudAlaa22/QuranTV',
      tags: ['Flutter', 'Live Streaming', 'Clean UI'],
    ),
    ProjectModel(
      title: 'Quran TV App',
      description:
          'Stream high-quality Quran channels with beautiful UI, dark mode, and live support.',
      image: AppImages.jpg.quranTV,
      images: [AppImages.jpg.quranTV],
      link: 'https://github.com/MahmoudAlaa22/QuranTV',
      tags: ['Flutter', 'Live Streaming', 'Clean UI'],
    ),
    ProjectModel(
      title: 'Quran TV App',
      description:
          'Stream high-quality Quran channels with beautiful UI, dark mode, and live support.',
      image: AppImages.jpg.quranTV,
      images: [AppImages.jpg.quranTV],
      link: 'https://github.com/MahmoudAlaa22/QuranTV',
      tags: ['Flutter', 'Live Streaming', 'Clean UI'],
    ),
    ProjectModel(
      title: 'Quran TV App',
      description:
          'Stream high-quality Quran channels with beautiful UI, dark mode, and live support.',
      image: AppImages.jpg.quranTV,
      images: [AppImages.jpg.quranTV],
      link: 'https://github.com/MahmoudAlaa22/QuranTV',
      tags: ['Flutter', 'Live Streaming', 'Clean UI'],
    ),
    ProjectModel(
      title: 'Quran TV App',
      description:
          'Stream high-quality Quran channels with beautiful UI, dark mode, and live support.',
      image: AppImages.jpg.quranTV,
      images: [AppImages.jpg.quranTV],
      link: 'https://github.com/MahmoudAlaa22/QuranTV',
      tags: ['Flutter', 'Live Streaming', 'Clean UI'],
    ),
    // ProjectModel(
    //   title: 'Travel Planner',
    //   description: 'A complete travel itinerary planner with editing, maps, and day-by-day trip management.',
    //   image: 'assets/projects/travel_planner.png',
    //   link: 'https://github.com/MahmoudAlaa22/TravelPlanner',
    //   tags: ['Flutter', 'Maps', 'Trip Planning'],
    // ),
  ],
);
