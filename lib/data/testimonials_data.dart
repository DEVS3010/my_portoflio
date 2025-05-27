import '../models/social_model.dart';
import '../models/testimonial_model.dart';

final testimonials = [
  TestimonialModel(
    name: 'Mohamed Salah',
    role: 'CTO, FutureTech',
    image: 'assets/images/user1.png',
    comment:
        'Working with Mahmoud was amazing. His Flutter skills, responsiveness, and attention to detail were exactly what we needed.',
    socialLinks: [
      SocialIModel(
        icon: 'assets/icons/github.svg',
        link: 'https://github.com/MahmoudAlaa22',
      ),
      SocialIModel(
        icon: 'assets/icons/linkedIn.svg',
        link: 'https://linkedin.com/in/MahmoudAlaa',
      ),
      SocialIModel(
        icon: 'assets/icons/email.svg',
        link: 'mailto:mahmoud3laa2210@gmail.com',
      ),
    ],
  ),
  TestimonialModel(
    name: 'Alaa Khaled',
    role: 'CEO, Quran App Team',
    image: 'assets/images/user2.png',
    comment:
        'Mahmoud delivered a high-quality Quran app with great performance and beautiful design. Definitely recommended.',
    socialLinks: [
      SocialIModel(
        icon: 'assets/icons/github.svg',
        link: 'https://github.com/MahmoudAlaa22',
      ),
      SocialIModel(
        icon: 'assets/icons/linkedIn.svg',
        link: 'https://linkedin.com/in/MahmoudAlaa',
      ),
      SocialIModel(
        icon: 'assets/icons/email.svg',
        link: 'mailto:mahmoud3laa2210@gmail.com',
      ),
    ],
  ),
];
