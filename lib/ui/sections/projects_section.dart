import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/ui/components/project_card_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/app_colors.dart';
import '../../../data/portfolio_data.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key});

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  final int _visibleCount = 3;

  @override
  Widget build(BuildContext context) {
    final isExpanded = _visibleCount >= profile.projects.length;

    return Container(
      color: AppColors.background,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 64.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Projects',
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ).animate().fadeIn().slideY(begin: 0.1),
          Text(
            'Throughout my journey as a Flutter developer, I’ve built a diverse collection of high-quality applications—from Quran and E-commerce apps to productivity and finance tools. These projects reflect my expertise in clean architecture, state management (BLoC, Provider), Firebase integration, localization, responsive UI, and performance optimization. I’ve also developed an AR-based application that leverages Flutter with augmented reality tools to deliver immersive and interactive user experiences.',
            style: TextStyle(fontSize: 14.sp, color: AppColors.text,
            
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 700.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder:
                  (context, index) => ProjectCardWidget(
                    project: profile.projects[index],
                  ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.2),
              separatorBuilder: (context, index) => SizedBox(width: 10.w),
              itemCount: profile.projects.length,
            ),
          ),

          // ProjectCardWidget(
          //   project: profile.projects[0],
          // ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.2),
        ],
      ),
    );
  }
}
