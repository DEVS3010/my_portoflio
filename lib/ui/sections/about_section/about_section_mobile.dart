// AboutSectionMobile styled and based on Mahmoud Alaa’s CV
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/core/app_text_styles.dart';
import 'package:my_portfolio/data/portfolio_data.dart';
import '../../../core/app_colors.dart';
import '../../../core/responsive_helper.dart';

class AboutSectionMobile extends StatelessWidget {
  const AboutSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
      color: AppColors.surface,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'About Me',
            style: AppTextStyles.font32WhiteBold,
          ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.1),

          SizedBox(height: 24.h),

          Text(
            profile.about,
            style: AppTextStyles.font21White.copyWith(
              color: AppColors.text,
            ),
            textAlign: TextAlign.justify,
          ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.2),
          // Optionally add a signature, badge, or download CV
        ],
      ),
    );
  }
}
