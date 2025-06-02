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
  ],

  projects: [
    ProjectModel(
      title: 'ZamZam',
      description:
          'مساعد المعتمر الذكي (زمزم)\nتطوير نظام ذكاء اصطناعي تفاعلي متعدد اللغات يوفر استجابات سريعة و مخصصة للمستخدمين',
      image: AppImages.project.zamzam.zamzam,
      images: [AppImages.project.zamzam.zamzam],
      link: '',
      tags: [
        'Flutter',
        'Artificial Intelligence (AI)',
        'Dart',
        'REST APIs',
        'Localization',
      ],
      isFeatured: false,
      github: null,
      liveDemo: null,
    ),

    // ProjectModel(
    //   title: 'Flutter animation CV',
    //   description:
    //       'Developed a Flutter Animation CV app/website that showcases a user\'s skills and qualifications in an engaging way, with features like:\n✓ Beautiful UI.\n✓ CV display.\n✓ Engaging animations.\n✓ Responsive design suitable for all screen sizes',
    //   image:
    //       'https://user-images.githubusercontent.com/60518534/212568752-0bbf9d7c-64d6-4537-af0f-688abc772634.gif',
    //   images: [
    //     'https://user-images.githubusercontent.com/60518534/212568752-0bbf9d7c-64d6-4537-af0f-688abc772634.gif',
    //   ],
    //   link:
    //       'https://github.com/MahmoudAlaa22/flutter-animation-CV-Readme-fle/blob/main/README.md',
    //   tags: ['Flutter', 'Dart', 'Animation', 'Web Applications', 'GitHub'],
    //   isFeatured: false,
    //   github:
    //       'https://github.com/MahmoudAlaa22/flutter-animation-CV-Readme-fle',
    //   liveDemo: null,
    // ),
    ProjectModel(
      title: 'E-Commerce',
      description:
          'Built an entire E-Commerce application with features such as:\n✓ Beautiful UI design.\n✓ User authentication (SignUp, SignIn) with auto-login and related services.\n✓ Light and dark modes.\n✓ Support for Arabic and English languages.\n✓ Responsive design suitable for all screen sizes.\n✓ Ability to add items to a cart, checkout, manage orders, and pay with any payment method',
      image: AppImages.project.ecommerce.eCommerce,
      images: [
        AppImages.project.ecommerce.splash,
        AppImages.project.ecommerce.login,
        AppImages.project.ecommerce.signUp,
        AppImages.project.ecommerce.home,
        AppImages.project.ecommerce.product,
        AppImages.project.ecommerce.categories,
        AppImages.project.ecommerce.filters,
        AppImages.project.ecommerce.categories1,
        AppImages.project.ecommerce.sortBby,
        AppImages.project.ecommerce.profile,
        AppImages.project.ecommerce.myOrdersProcessing,
        AppImages.project.ecommerce.orderDetailsBy,
        AppImages.project.ecommerce.myOrdersCancelled,
        AppImages.project.ecommerce.product1,
        AppImages.project.ecommerce.cart,
        AppImages.project.ecommerce.checkOut,
        AppImages.project.ecommerce.checkOut1,
        AppImages.project.ecommerce.orderSuccess,
      ],
      link:
          'https://github.com/MahmoudAlaa22/E-Commerce-Readme-file-/blob/main/README.md',
      tags: ['Flutter', 'Dart', 'REST APIs', 'E-Commerce', 'Localization'],
      isFeatured: true,
      github: 'https://github.com/MahmoudAlaa22/E-Commerce-Readme-file-',
      liveDemo:
          'https://www.linkedin.com/posts/mahmoudalaa2210_tdd-bloc-flutterabrbloc-activity-6993572439372775424-Jabx',
    ),

    // ProjectModel(
    //   title: 'Celeste (Weather App)',
    //   description:
    //       "Developed an application that displays the weather for any location worldwide, with features such as:\n"
    //       "✓ Ease of use.\n✓ Responsive design suitable for all screen sizes.\n✓ Temperature display.\n"
    //       "✓ Percentage of clouds, humidity, and wind.\n✓ Ability to search for any city's temperature.",
    //   image:
    //       'https://user-images.githubusercontent.com/60518534/211040412-78f32150-2554-4b97-9b82-84b3d203c280.gif',
    //   images: [
    //     'https://user-images.githubusercontent.com/60518534/211040412-78f32150-2554-4b97-9b82-84b3d203c280.gif',
    //     'https://user-images.githubusercontent.com/60518534/185890876-307fa5ac-ddda-4834-88f6-6cf31b09abd3.jpg',
    //     'https://user-images.githubusercontent.com/60518534/185890884-ef76daaa-3bfc-4352-9ce7-362210f57720.jpg',
    //     'https://user-images.githubusercontent.com/60518534/185890915-d2aa85be-4809-45a2-8016-3821af6d27bd.jpg',
    //     'https://user-images.githubusercontent.com/60518534/185890699-1503cc36-f4e9-4d88-802c-8c2328f2181b.jpg',
    //     'https://user-images.githubusercontent.com/60518534/185890746-20c33dc4-4964-4e29-b83d-4b7e3b4858d9.jpg',
    //     'https://user-images.githubusercontent.com/60518534/185890779-c37ef86d-755c-4995-896b-f7093db441e9.jpg',
    //     'https://user-images.githubusercontent.com/60518534/185890789-0b56c57c-16a7-48a0-9ebf-bc8dc4f26aaa.jpg',
    //     'https://user-images.githubusercontent.com/60518534/185890821-6a93164e-1f21-46e3-9399-633d9046a295.jpg',
    //     'https://user-images.githubusercontent.com/60518534/185890855-e053a2f6-bf8c-4c53-a647-e9dedb1e63c9.jpg',
    //   ],
    //   link: 'https://github.com/MahmoudAlaa22/WeatherApp-Readme-file',
    //   tags: ['Flutter', 'Dart', 'OpenWeather API', 'Lottie', 'GetX'],
    //   isFeatured: false,
    //   github: 'https://github.com/MahmoudAlaa22/WeatherApp-Readme-file',
    //   liveDemo:
    //       'https://www.linkedin.com/posts/mahmoudalaa2210_stateabrmanagement-api-requests-activity-6978941210748989440-Kffd',
    // ),
    ProjectModel(
      title: 'El-Ogra – الاجرة',
      description:
          "Developed an application that helps users collect fares and return the exact amount to each account.\n"
          "Features include:\n✓ Ease of use.\n✓ Responsive design suitable for all screen sizes.\n"
          "✓ Identification of the person who paid the fare.\n✓ Calculation of the remaining amount and issuance of an invoice to the account.",
      image: AppImages.project.elOgra.elOgra,
      images: [
        AppImages.project.elOgra.splash,
        AppImages.project.elOgra.dashboard,
        AppImages.project.elOgra.home,
        AppImages.project.elOgra.addTheAmountPaid,
        AppImages.project.elOgra.bill,
        AppImages.project.elOgra.thePaymentWasMade,
        AppImages.project.elOgra.anErrorOccurred,
      ],
      link: 'https://github.com/MahmoudAlaa22/El-Ogra-Readme-file',
      tags: ['Flutter', 'Dart', 'Lottie', 'GetX', 'Responsive UI'],
      isFeatured: false,
      github: 'https://github.com/MahmoudAlaa22/El-Ogra-Readme-file',
      liveDemo:
          'https://www.linkedin.com/posts/mahmoudalaa2210_new-achievement-disclaimer-activity-6974096037988700160-Oy__',
    ),
    // ProjectModel(
    //   title: 'Qurani Pro',
    //   description:
    //       'Contributed to the development of the Qurani Pro Quran application, by resolving issues and adding new features such as:\n'
    //       '✓ Identifying the nearest mosques.\n'
    //       '✓ Using the camera to determine the Qibla direction.\n'
    //       '✓ Displaying the Quran and Tafsir.\n'
    //       '✓ Resolving design problems.',
    //   image:
    //       'https://github-production-user-asset-6210df.s3.amazonaws.com/60518534/450222435-89cb6783-8e5c-4e9d-850d-c3286bf362bd.jpg',
    //   images: [
    //     'https://github-production-user-asset-6210df.s3.amazonaws.com/60518534/450222435-89cb6783-8e5c-4e9d-850d-c3286bf362bd.jpg',
    //   ],
    //   link: 'https://play.google.com/store/apps/details?id=com.sh.quran_motif',
    //   tags: ['Flutter', 'Dart', 'REST APIs', 'Google Maps', 'SQL', 'Databases'],
    //   isFeatured: false,
    //   github: null,
    //   liveDemo: null,
    // ),
    // ProjectModel(
    //   title: 'Albayan',
    //   description:
    //       'Built an entire Quran application in collaboration with a friend.\n'
    //       '✓ Used Bloc as state management, Sqflite for the database, HTTP for making HTTP requests, '
    //       'flutter_local_notifications for displaying and scheduling local notifications, and just_audio for audio-related features.',
    //   image:
    //       'https://github-production-user-asset-6210df.s3.amazonaws.com/60518534/450224380-9b1a865c-8de9-4f5c-8dfd-80600b3842c8.jpg',
    //   images: [
    //     'https://github-production-user-asset-6210df.s3.amazonaws.com/60518534/450224380-9b1a865c-8de9-4f5c-8dfd-80600b3842c8.jpg',
    //   ],
    //   link: 'https://play.google.com/store/apps/details?id=com.sh.albayan',
    //   tags: [
    //     'Flutter',
    //     'Dart',
    //     'REST APIs',
    //     'Animation',
    //     'SQL',
    //     'Notification',
    //     'Audio',
    //   ],
    //   isFeatured: false,
    //   github: null,
    //   liveDemo: null,
    // ),
    // ProjectModel(
    //   title: 'DEVS Notes',
    //   description:
    //       'Developed a note-taking application that uses a local database (Sqflite) and includes a CRUD system, with features like:\n'
    //       '✓ Light and dark modes.\n✓ Ability to write, record, attach pictures, and draw notes.\n'
    //       '✓ Ability to change the color of notes.\n✓ Support for Arabic and English languages.\n'
    //       '✓ Responsive design suitable for all screen sizes.',
    //   image:
    //       'https://user-images.githubusercontent.com/60518534/211018545-a1ee81f8-7b2c-492e-ade8-e1a588df34cd.gif',
    //   images: [
    //     'https://user-images.githubusercontent.com/60518534/211018545-a1ee81f8-7b2c-492e-ade8-e1a588df34cd.gif',
    //     'https://user-images.githubusercontent.com/60518534/211012094-4d8fc763-d4d2-4184-92ac-402f3a723da4.jpg',
    //     'https://user-images.githubusercontent.com/60518534/211012100-7b62e186-f14d-468d-8d4d-ad7a4b275ce7.jpg',
    //     'https://user-images.githubusercontent.com/60518534/211012122-cb194488-0bdc-42a3-87ef-40aae0a80fa0.jpg',
    //     'https://user-images.githubusercontent.com/60518534/211012131-e207b4cc-703b-4302-8eee-2629d4db5f01.jpg',
    //     'https://user-images.githubusercontent.com/60518534/211024575-b8e0745f-c2aa-47f3-8589-8f825377b352.jpg',
    //     'https://user-images.githubusercontent.com/60518534/211012156-ac1b53d4-56c6-40b0-b02e-0b80fe26f48c.jpg',
    //     'https://user-images.githubusercontent.com/60518534/211012182-78ec4085-96a8-488e-b2b4-03fd28f15728.jpg',
    //     'https://user-images.githubusercontent.com/60518534/211012031-e7d55546-1e05-4f5b-acf8-019b918273f8.jpg',
    //     'https://user-images.githubusercontent.com/60518534/211012052-15ae35f7-4d56-4b20-8622-5e890afc0ffb.jpg',
    //     'https://user-images.githubusercontent.com/60518534/211012058-ec7f7138-9e3f-4849-aca1-ccc2d17a5653.jpg',
    //     'https://user-images.githubusercontent.com/60518534/211024590-fd038650-0f31-4e5d-9a1f-36e702dec134.jpg',
    //     'https://user-images.githubusercontent.com/60518534/211012076-a3663560-495a-420c-841d-f8709ee12234.jpg',
    //   ],
    //   link: 'https://github.com/MahmoudAlaa22/DEVS-Notes-Readme-file',
    //   tags: ['Flutter', 'Dart', 'Databases', 'Lottie', 'Animation'],
    //   isFeatured: false,
    //   github: 'https://github.com/MahmoudAlaa22/DEVS-Notes-Readme-file',
    //   liveDemo:
    //       'https://www.linkedin.com/posts/mahmoudalaa2210_bloc-flutterabrbloc-sqflite-activity-7005512754648264705-AdpS',
    // ),
    // ProjectModel(
    //   title: 'Al-Wahab',
    //   description:
    //       'Built an entire Quran application that includes features such as:\n'
    //       '✓ Displaying the Quran, prayer times, and dhikr in a user-friendly way.\n'
    //       '✓ Showing the interpretation of each verse.\n'
    //       '✓ Listening to the Holy Quran radio.\n'
    //       '✓ Used Bloc as state management, Sqflite for the database, HTTP for making HTTP requests, and audio players for audio-related features.',
    //   image:
    //       'https://github-production-user-asset-6210df.s3.amazonaws.com/60518534/450230002-845c2829-b870-47ad-8e95-180901b15631.jpg',
    //   images: [
    //     'https://github-production-user-asset-6210df.s3.amazonaws.com/60518534/450230002-845c2829-b870-47ad-8e95-180901b15631.jpg',
    //   ],
    //   link:
    //       'https://play.google.com/store/apps/details?id=com.mahmoud.al_wahab',
    //   tags: ['Flutter', 'Dart', 'Audio', 'REST APIs'],
    //   isFeatured: false,
    //   github: null,
    //   liveDemo: null,
    // ),
    // ProjectModel(
    //   title: 'Password Manager App',
    //   description:
    //       'A secure solution built using Flutter to help you manage your passwords securely and effortlessly.\n'
    //       '✓ Beautiful UI.\n'
    //       '✓ Clean Architecture.\n'
    //       '✓ CI/CD (Firebase, FastLane, GitHub Actions).\n'
    //       '✓ Firebase Realtime Database.\n'
    //       '✓ Sign in with Email, Facebook, and Google.\n'
    //       '✓ Password strength analysis.',
    //   image:
    //       'https://github.com/MahmoudAlaa22/make_password_encryption/assets/60518534/b8ec26af-4c8d-4604-a168-07a7745ba046',
    //   images: [
    //     'https://github.com/MahmoudAlaa22/make_password_encryption/assets/60518534/b8ec26af-4c8d-4604-a168-07a7745ba046',
    //     'https://github.com/MahmoudAlaa22/make_password_encryption/blob/develop/Screenshots/Splash%20Screen.jpeg?raw=true',
    //     'https://github.com/MahmoudAlaa22/make_password_encryption/blob/develop/Screenshots/Login.png',
    //     'https://github.com/MahmoudAlaa22/make_password_encryption/blob/develop/Screenshots/Sign%20up.png',
    //     'https://github.com/MahmoudAlaa22/make_password_encryption/blob/develop/Screenshots/Home%20Screen.png',
    //     'https://github.com/MahmoudAlaa22/make_password_encryption/blob/develop/Screenshots/Security%20Analysis%201%20.png',
    //     'https://github.com/MahmoudAlaa22/make_password_encryption/blob/develop/Screenshots/Security%20Analysis%202.png',
    //     'https://github.com/MahmoudAlaa22/make_password_encryption/blob/develop/Screenshots/Add%20New%20Password%201.png',
    //     'https://github.com/MahmoudAlaa22/make_password_encryption/blob/develop/Screenshots/Add%20New%20Password%202.png',
    //     'https://github.com/MahmoudAlaa22/make_password_encryption/blob/develop/Screenshots/Settings.png',
    //     'https://github.com/MahmoudAlaa22/make_password_encryption/blob/develop/Screenshots/Profile%20Screen.png',
    //     'https://github.com/MahmoudAlaa22/make_password_encryption/blob/develop/Screenshots/Edit%20Profile%20.png',
    //     'https://github.com/MahmoudAlaa22/make_password_encryption/blob/develop/Screenshots/Forgot%20Password%20.png',
    //   ],
    //   link: 'https://github.com/MahmoudAlaa22/make_password_encryption',
    //   tags: ['Flutter', 'Dart', 'Firebase', 'CI/CD', 'Security'],
    //   isFeatured: true,
    //   github: 'https://github.com/MahmoudAlaa22/make_password_encryption',
    //   liveDemo:
    //       'https://github.com/MahmoudAlaa22/make_password_encryption/assets/60518534/e88188ab-c577-4606-907c-91f6241d5d76',
    // ),
    // ProjectModel(
    //   title: 'Quran TV',
    //   description:
    //       'Quran TV is a modern, elegant, and spiritually-themed Flutter application for live Islamic TV streaming.\n'
    //       '✓ Stream live Quran and Islamic TV channels (1080p / 720p).\n'
    //       '✓ Beautiful splash screen with Islamic design.\n'
    //       '✓ Multi-language support (EN/AR).\n'
    //       '✓ Modular architecture using Clean Architecture.\n'
    //       '✓ Responsive and RTL-friendly UI.',
    //   image:
    //       'https://github.com/user-attachments/assets/164806f2-f569-4a51-9c6e-ae55d9ea0af6',
    //   images: [
    //     'https://github.com/user-attachments/assets/164806f2-f569-4a51-9c6e-ae55d9ea0af6',
    //     'https://github.com/user-attachments/assets/7c95cbba-9998-4871-bdeb-07b8c620b49f',
    //     'https://github.com/user-attachments/assets/73216e6d-cb20-49f0-9e62-962605125b66',
    //   ],
    //   link: '',
    //   tags: ['Flutter', 'Dart', 'BLoC', 'Streaming', 'Localization'],
    //   isFeatured: true,
    //   github: null,
    //   liveDemo: null,
    // ),
    // ProjectModel(
    //   title: 'Jamallek',
    //   description:
    //       'Jamallek is a beautifully designed, region-aware e-commerce Flutter app for beauty and skincare products. It provides a seamless shopping experience with multilingual support, dynamic country configuration, clean UI, and powerful architecture.\n'
    //       '✓ Shop by category: Skin, Hair, Face, Lip, Eye, and more\n'
    //       '✓ Country-based configuration (Egypt 🇪🇬, UAE 🇦🇪)\n'
    //       '✓ Bilingual support (Arabic 🇸🇦 & English 🇬🇧)\n'
    //       '✓ Smart cart, wishlist, coupons, and secure checkout\n'
    //       '✓ Clean Architecture and fully responsive UI.',
    //   image:
    //       'https://github.com/user-attachments/assets/02717e87-0f72-4c29-8e34-edabb6152cae',
    //   images: [
    //     'https://github.com/user-attachments/assets/02717e87-0f72-4c29-8e34-edabb6152cae',
    //     'https://github.com/user-attachments/assets/a5f92e7a-0d1a-4052-b7a6-4f2e4c72bb47',
    //     'https://github.com/user-attachments/assets/fd4d0891-6c08-4f68-81dd-ab0097f4752f',
    //     'https://github.com/user-attachments/assets/800f9aba-48f4-4a7b-8911-5f60b866e99f',
    //     'https://github.com/user-attachments/assets/465e5471-b255-407e-b27f-141de0185fbd',
    //     'https://github.com/user-attachments/assets/dccca5ea-5cc5-4989-9f61-2cddf5d2ba40',
    //     'https://github.com/user-attachments/assets/88b3a848-ac11-4f81-a2d3-8c0c1b612c2f',
    //     'https://github.com/user-attachments/assets/ccdd11e0-4b01-4586-8b87-c3b0eff347b4',
    //     'https://github.com/user-attachments/assets/cf7d13f1-c615-4f4d-8d7e-d95f376fc9bf',
    //     'https://github.com/user-attachments/assets/5a989331-8f4d-4761-8cd0-83d7bd45d881',
    //     'https://github.com/user-attachments/assets/f2cabee5-c399-4bd2-9c96-1562ea2b00fa',
    //     'https://github.com/user-attachments/assets/175f3c5d-4e3a-49d5-99ba-913362928cde',
    //     'https://github.com/user-attachments/assets/8e5b9fe4-8d99-4083-b1b8-0a1d8b8436a5',
    //     'https://github.com/user-attachments/assets/3688edc1-0ca5-49ec-9c03-02c3fe2d1cad',
    //     'https://github.com/user-attachments/assets/5d0203db-578c-4db4-8adc-b6bf01e3affa',
    //     'https://github.com/user-attachments/assets/adaeddea-26bd-4e05-b4fd-6af95a390ebc',
    //   ],
    //   link: '', // if available, replace with GitHub or Play Store link
    //   tags: [
    //     'Flutter',
    //     'Dart',
    //     'E-Commerce',
    //     'Localization',
    //     'Clean Architecture',
    //     'BLoC',
    //     'Dio',
    //     'SharedPreferences',
    //   ],
    //   isFeatured: true,
    //   github: null,
    //   liveDemo: null,
    // ),
    // ProjectModel(
    //   title: 'Prayer Times App',
    //   description:
    //       'Prayer Times is a modern, elegant, and spiritually inspired Flutter app that provides accurate daily Islamic prayer times.\n'
    //       '✓ Accurate times for Fajr, Dhuhr, Asr, Maghrib, and Isha.\n'
    //       '✓ Animated countdown to next prayer.\n'
    //       '✓ Multi-language (AR/EN) and RTL support.\n'
    //       '✓ Beautiful Islamic UI with light/dark mode.\n'
    //       '✓ Customizable Adhan notifications.\n'
    //       '✓ Built with Clean Architecture and modular structure.',
    //   image:
    //       'https://github.com/user-attachments/assets/e696d795-d9b7-43dd-9101-b4fe09299af5',
    //   images: [
    //     'https://github.com/user-attachments/assets/your-splash-img.png',
    //     'https://github.com/user-attachments/assets/e696d795-d9b7-43dd-9101-b4fe09299af5',
    //     'https://github.com/user-attachments/assets/your-settings-img.png',
    //   ],
    //   link: '', // Add Play Store or GitHub repo if available
    //   tags: [
    //     'Flutter',
    //     'Dart',
    //     'BLoC',
    //     'Localization',
    //     'Clean Architecture',
    //     'Prayer Times',
    //     'Notifications',
    //   ],
    //   isFeatured: true,
    //   github: null,
    //   liveDemo: null,
    // ),
  ],
);
