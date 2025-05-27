import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/data/portfolio_data.dart';
import '../../../core/app_colors.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 64.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Work Experience',
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
          SizedBox(height: 24.h),

          ...List.generate(profile.experiences.length, (index) {
            final item = profile.experiences[index];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Left Side
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        item.company,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        item.duration,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.text,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Center Timeline Dot
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 8.r,
                        backgroundColor:
                            item.isCurrent
                                ? AppColors.primary
                                : AppColors.white.withOpacity(0.8),
                      ),
                      if (index != profile.experiences.length - 1)
                        Container(
                          width: 2.w,
                          height: 60.h,
                          color: AppColors.white.withOpacity(0.2),
                        ),
                    ],
                  ),
                ),

                /// Right Side
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        item.description,
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: AppColors.text,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}
