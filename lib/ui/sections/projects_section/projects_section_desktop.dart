import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/ui/components/project_card/project_card_widget_desktop.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_text_styles.dart';
import '../../../data/portfolio_data.dart';
import '../../../core/responsive_helper.dart';

class ProjectsSectionDesktop extends StatefulWidget {
  const ProjectsSectionDesktop({super.key});

  @override
  State<ProjectsSectionDesktop> createState() => _ProjectsSectionDesktopState();
}

class _ProjectsSectionDesktopState extends State<ProjectsSectionDesktop> {
  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      color: AppColors.surface,

      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Projects',
            style:
                isMobile
                    ? AppTextStyles.font21White.copyWith(
                      fontWeight: FontWeight.bold,
                    )
                    : AppTextStyles.font32WhiteBold,
          ).animate().fadeIn().slideY(begin: 0.1),
          Text(
            'Throughout my journey as a Flutter developer, I’ve built a diverse collection of high-quality applications—from Quran and E-commerce apps to productivity and finance tools. These projects reflect my expertise in clean architecture, state management (BLoC, Provider), Firebase integration, localization, responsive UI, and performance optimization. I’ve also developed an AR-based application that leverages Flutter with augmented reality tools to deliver immersive and interactive user experiences.',
            style:
                isMobile
                    ? AppTextStyles.font12Text
                    : AppTextStyles.font14.copyWith(color: AppColors.text),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: isMobile ? 550.h : 900.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder:
                  (context, index) => ProjectCardWidgetDesktop(
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
