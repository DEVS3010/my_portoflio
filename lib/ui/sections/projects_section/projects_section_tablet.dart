import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/ui/components/project_card/project_card_widget_tablet.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_text_styles.dart';
import '../../../core/responsive_helper.dart';
import '../../../data/portfolio_data.dart';

class ProjectsSectionTablet extends StatefulWidget {
  const ProjectsSectionTablet({super.key});

  @override
  State<ProjectsSectionTablet> createState() => _ProjectsSectionTabletState();
}

class _ProjectsSectionTabletState extends State<ProjectsSectionTablet> {

  @override
  Widget build(BuildContext context) {

    return Container(
      color: AppColors.surface,
      
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Projects',
            style:AppTextStyles.font32WhiteBold,
          ).animate().fadeIn().slideY(begin: 0.1),
          Text(
            'Throughout my journey as a Flutter developer, I’ve built a diverse collection of high-quality applications—from Quran and E-commerce apps to productivity and finance tools. These projects reflect my expertise in clean architecture, state management (BLoC, Provider), Firebase integration, localization, responsive UI, and performance optimization. I’ve also developed an AR-based application that leverages Flutter with augmented reality tools to deliver immersive and interactive user experiences.',
            style: AppTextStyles.font18.copyWith(color: AppColors.text),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 900.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder:
                  (context, index) => ProjectCardWidgetTablet(
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
