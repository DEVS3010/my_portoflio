import 'package:flutter/widgets.dart';
import 'package:my_portfolio/core/responsive_helper.dart';
import 'package:my_portfolio/models/section_item_model.dart';
import 'package:my_portfolio/ui/sections/certifications_section/certifications_section_desktop.dart';
import 'package:my_portfolio/ui/sections/projects_section/projects_section_desktop.dart';
import 'package:my_portfolio/ui/sections/recommendations_section/recommendations_section_mobile.dart';
import '../ui/sections/about_section/about_section_desktop.dart';
import '../ui/sections/about_section/about_section_mobile.dart';
import '../ui/sections/about_section/about_section_tablet.dart';
import '../ui/sections/certifications_section/certifications_section_mobile.dart';
import '../ui/sections/certifications_section/certifications_section_tablet.dart';
import '../ui/sections/contact_section.dart';
import '../ui/sections/experience_section/experience_section_desktop.dart';
import '../ui/sections/experience_section/experience_section_mobile.dart';
import '../ui/sections/experience_section/experience_section_tablet.dart';
import '../ui/sections/header_section/header_section_desktop.dart';
import '../ui/sections/header_section/header_section_mobile.dart';
import '../ui/sections/header_section/header_section_tablet.dart';
import '../ui/sections/projects_section/projects_section_mobile.dart';
import '../ui/sections/projects_section/projects_section_tablet.dart';
import '../ui/sections/recommendations_section/recommendations_section_desktop.dart';
import '../ui/sections/recommendations_section/recommendations_section_tablet.dart';
import '../ui/sections/skills_section/skills_section_desktop.dart';
import '../ui/sections/skills_section/skills_section_mobile.dart';
import '../ui/sections/skills_section/skills_section_tablet.dart';

final sectionKeys = {
  'Home': GlobalKey(),
  'About': GlobalKey(),
  'Skills': GlobalKey(),
  'Experience': GlobalKey(),
  'Certifications': GlobalKey(),
  'Projects': GlobalKey(),
  'Recommendations': GlobalKey(),
  'Contact': GlobalKey(),
};

final List<SectionItemWidget> sections = [
  SectionItemWidget(
    name: 'Home',
    section: Responsive(
      mobile: const HeaderSectionMobile(),
      tablet: const HeaderSectionTablet(),
      desktop: const HeaderSectionDesktop(),
    ),
  ),
  SectionItemWidget(
    name: 'About',
    section: Responsive(
      mobile: const AboutSectionMobile(),
      tablet: const AboutSectionTablet(),
      desktop: const AboutSectionDesktop(),
    ),
  ),
  SectionItemWidget(
    name: 'Skills',
    section: Responsive(
      mobile: const SkillsSectionMobile(),
      tablet: const SkillsSectionTablet(),
      desktop: const SkillsSectionDesktop(),
    ),
  ),
  SectionItemWidget(
    name: 'Experience',
    section: Responsive(
      mobile: const ExperienceSectionMobile(),
      tablet: const ExperienceSectionTablet(),
      desktop: const ExperienceSectionDesktop(),
    ),
  ),
  SectionItemWidget(
    name: 'Certifications',
    section: Responsive(
      mobile: const CertificationsSectionMobile(),
      tablet: const CertificationsSectionTablet(),
      desktop:
          const CertificationsSectionDesktop(), // Assuming same for desktop
    ),
  ),

  SectionItemWidget(
    name: 'Projects',
    section: Responsive(
      mobile: const ProjectsSectionMobile(),
      tablet: const ProjectsSectionTablet(),
      desktop: ProjectsSectionDesktop(),
    ),
  ),
  SectionItemWidget(
    name: 'Recommendations',
    section: Responsive(
      mobile: const RecommendationsSectionMobile(),
      tablet: const RecommendationsSectionTablet(),
      desktop: const RecommendationsSectionDesktop(),
    ),
  ),
  SectionItemWidget(name: 'Contact', section: const ContactSection()),
];
