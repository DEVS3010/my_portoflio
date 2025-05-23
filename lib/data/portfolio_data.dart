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
  photo: 'assets/images/profile.png',
  profile: 'Flutter Developer | Mobile Team Lead',
  country: 'Saudi Arabia',

  profileSummary:
      'I am a Flutter developer with 4+ years of experience delivering production-grade apps with clean architecture and optimized performance.',

  about:
      'I specialize in building scalable and elegant mobile applications using Flutter. I’ve led teams, mentored junior developers, and published over 10 apps across various industries including e-commerce, car rentals, and fintech.',

  socialLinks: [
    SocialIModel(
      icon: 'assets/icons/github.png',
      link: 'https://github.com/MahmoudAlaa22',
    ),
    SocialIModel(
      icon: 'assets/icons/linkedin.png',
      link: 'https://linkedin.com/in/MahmoudAlaa',
    ),
    SocialIModel(
      icon: 'assets/icons/email.png',
      link: 'mailto:mahmoud3laa2210@gmail.com',
    ),
  ],

  skills: [
    SkillModel(name: 'Flutter', icon: 'assets/icons/flutter.svg'),
    SkillModel(name: 'Dart', icon: 'assets/icons/dart.svg'),
    SkillModel(name: 'Firebase', icon: 'assets/icons/firebase.svg'),
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
      description: 'Developed multi-platform car rental applications at TraveL using Flutter for iOS, Android, and Web.',
      image: 'assets/images/travel.png',
      type: 'Full-time',
      duration: '2021 - 2022',
    ),
  ],

  projects: [
    ProjectModel(
      title: 'Quran TV App',
      description: 'Stream high-quality Quran channels with beautiful UI, dark mode, and live support.',
      image: 'assets/projects/quran_tv.jpeg',
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
