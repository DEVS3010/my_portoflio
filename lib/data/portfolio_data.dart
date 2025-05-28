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
    // ExperienceModel(
    //   title: 'Mobile Team Lead',
    //   description: 'Leading the mobile development team at Solution Hunters, overseeing architecture, mentoring, and code quality.',
    //   image: 'assets/images/solution_hunters.png',
    //   type: 'Full-time',
    //   duration: '2022 - Present',
    // ),
    ExperienceModel(
      title: 'Flutter Developer',
      description:
          'Developed multi-platform car rental applications at TraveL using Flutter for iOS, Android, and Web.',
      company: 'TraveL',
      technologies: ['Flutter', 'Firebase', 'BLoC', 'Responsive UI'],
      duration: '2021 – 2022',
      
    ),
    ExperienceModel(
      title: 'Flutter Developer',
      description:
          'Developed multi-platform car rental applications at TraveL using Flutter for iOS, Android, and Web.',
      company: 'TraveL',
      technologies: ['Flutter', 'Firebase', 'BLoC', 'Responsive UI'],
      duration: '2021 - 2022',
    ),
    ExperienceModel(
      title: 'Flutter Developer',
      description:
          'Developed multi-platform car rental applications at TraveL using Flutter for iOS, Android, and Web.',
      company: 'TraveL',
      technologies: ['Flutter', 'Firebase', 'BLoC', 'Responsive UI'],
      duration: 'Mar 2023 – Present',
      isCurrent: true
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
