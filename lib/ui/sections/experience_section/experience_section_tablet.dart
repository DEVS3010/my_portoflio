import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/data/portfolio_data.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_text_styles.dart';
import '../../../core/responsive_helper.dart';
class ExperienceSectionTablet extends StatelessWidget {
  const ExperienceSectionTablet({super.key});

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
            'My Work Experience',
            style:
                isMobile
                    ? AppTextStyles.font21White.copyWith(
                      fontWeight: FontWeight.bold,
                    )
                    : AppTextStyles.font32WhiteBold,
          ),
          SizedBox(height: 24.h),

          ...List.generate(profile.experiences.length, (index) {
            final item = profile.experiences[index];
            return SizedBox(
              height: isMobile ? 200.h : 150.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Left Side
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          item.company,
                          style:
                              isMobile
                                  ? AppTextStyles.font14WhiteBold
                                  : AppTextStyles.font18WhiteBold,
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
                                      : AppColors.white.withValues(alpha: 0.8),
                            )
                            .animate(
                              onPlay:
                                  !item.isCurrent
                                      ? null
                                      : (controller) =>
                                          controller.repeat(reverse: true),
                            )
                            .fadeIn(duration: 1.seconds)
                            .shimmer(duration: 2.seconds),
                        if (index != profile.experiences.length - 1)
                          Expanded(
                            child: Container(
                                  width: 2.w,
                                  color:
                                      item.isCurrent
                                          ? AppColors.primary
                                          : AppColors.white.withValues(
                                            alpha: 0.2,
                                          ),
                                )
                                .animate()
                                .fadeIn(duration: 1.seconds)
                                .shimmer(duration: 2.seconds),
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
                          style:
                              isMobile
                                  ? AppTextStyles.font14PrimaryBold
                                  : AppTextStyles.font18PrimaryBold,
                        ),
                        SizedBox(height: 4.h),
                        Text(item.description, style: AppTextStyles.font12Text),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
