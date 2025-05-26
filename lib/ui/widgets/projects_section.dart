import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/ui/widgets/project_card_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/app_colors.dart';
import '../../../data/portfolio_data.dart';
import 'clipped_image_widget.dart';

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
    final visibleProjects = profile.projects.take(_visibleCount).toList();

    return Container(
      color: AppColors.background,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 64.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ).animate().fadeIn().slideY(begin: 0.1),

          FancyClippedImage(
            imagePath: profile.projects.first.image,
            width: 500,
            height: 250,
          ),
        ],
      ),
    );
  }
}
