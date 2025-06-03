import '../core/image_assets.dart';
import '../models/profile_model.dart';
import 'experiences_data.dart';
import 'projects_data.dart';
import 'skills_data.dart';
import 'social_links_data.dart';

final profile = ProfileModel(
  name: 'Mahmoud Alaa',
  email: 'mahmoud3laa2210@gmail.com',
  experienceYears: '4+',
  cvLink: '',
  logo: 'assets/images/logo.png',
  photo: AppImages.png.profile,
  profile: 'Software Engineer',
  country: 'Saudi Arabia',
  profileSummary:
      'I build clean, scalable, and visually stunning Flutter applications for mobile, web, and desktop. My passion lies in transforming complex ideas into smooth, interactive experiences.',
  about:
      "I'm a dedicated Flutter developer with over 4 years of experience delivering high-quality, responsive apps across platforms. My work spans from leading teams to building apps used by thousands, such as Quran platforms, E-commerce apps, and productivity tools. I care deeply about clean architecture, performance, and creating user-first experiences. I’ve also represented my teams at events like Leap2024 and Intersec.",
  socialLinks: socialLinks,
  skills: skills,
  experiences: experiences,
  projects: projects,
);
