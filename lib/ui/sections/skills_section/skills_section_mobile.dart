import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_text_styles.dart';
import '../../../core/image_assets.dart';
import '../../../core/responsive_helper.dart';
import '../../../data/portfolio_data.dart';

class SkillsSectionMobile extends StatelessWidget {
  const SkillsSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final visualSkills = profile.skills.where((s) => s.icon != null).toList();
    final textSkills =
        profile.skills.where((s) => s.icon == null).map((s) => s.name).toList();


    return Container(
      color: AppColors.background,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Skills',
            style: AppTextStyles.font32WhiteBold,
          ).animate().fadeIn().slideY(begin: 0.1),

          SizedBox(height: 32.h),

          /// Core Skills (with icons)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Core Tools & Technologies',
              style: AppTextStyles.font24.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Wrap(
            spacing: 20.w,
            runSpacing: 20.h,
            children:
                visualSkills.map((skill) {
                  return Container(
                    width: .4.sw,
                    height: 100,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 20.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.grey.shade800,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (skill.icon != null)
                          Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: AppImages.buildImageFromAsset(
                              skill.icon!,
                              width: 60.w,
                              height: 60.w,
                            ),
                          ),
                        Text(
                          skill.name,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ).animate().fadeIn(duration: 300.ms);
                }).toList(),
          ),

          /// Text-only Skills
          if (textSkills.isNotEmpty) ...[
            SizedBox(height: 40.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Additional Skills',
                style: AppTextStyles.font24.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Wrap(
              spacing: 12.w,
              runSpacing: 12.h,
              children:
                  textSkills.map((name) {
                    return Chip(
                      label: Text(name, style: TextStyle(fontSize: 12)),
                      backgroundColor: AppColors.white.withValues(alpha: 0.08),
                    ).animate().fadeIn(duration: 300.ms);
                  }).toList(),
            ),
          ],
        ],
      ),
    );
  }
}
