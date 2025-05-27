import 'package:flutter/widgets.dart';
import 'package:my_portfolio/models/section_item_model.dart';

import '../ui/sections/about_section.dart';
import '../ui/sections/contact_section.dart';
import '../ui/sections/experience_section.dart';
import '../ui/sections/header_section.dart';
import '../ui/sections/projects_section.dart';
import '../ui/sections/skills_section.dart';
import '../ui/sections/testimonials_section.dart';

final sectionKeys = {
  'Home': GlobalKey(),
  'About': GlobalKey(),
  'Skills': GlobalKey(),
  'Experience': GlobalKey(),
  'Projects': GlobalKey(),
  'Testimonials': GlobalKey(),
  'Contact': GlobalKey(),
};

final List<SectionItemWidget> sections = [
  SectionItemWidget(name: 'Home', section: const HeaderSection()),
  SectionItemWidget(name: 'About', section: const AboutSection()),
  SectionItemWidget(name: 'Skills', section: const SkillsSection()),
  SectionItemWidget(name: 'Experience', section: const ExperienceSection()),
  SectionItemWidget(name: 'Projects', section: const ProjectsSection()),
  SectionItemWidget(name: 'Testimonials', section: const TestimonialsSection()),
  SectionItemWidget(name: 'Contact', section: const ContactSection()),
];
