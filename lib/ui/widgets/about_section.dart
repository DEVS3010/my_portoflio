// AboutSection styled and based on Mahmoud Alaa’s CV
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/data/portfolio_data.dart';
import '../../../core/app_colors.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
      color: AppColors.background,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.1),

          SizedBox(height: 24.h),

          Text(
            profile.about,
            style: TextStyle(
              fontSize: 16.sp,
              height: 1.6,
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
