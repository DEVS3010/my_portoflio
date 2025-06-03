import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_text_styles.dart';
import '../../../core/responsive_helper.dart';
import '../../../data/recommendations_data.dart';

class RecommendationsSectionMobile extends StatefulWidget {
  const RecommendationsSectionMobile({super.key});

  @override
  State<RecommendationsSectionMobile> createState() =>
      _RecommendationsSectionMobileState();
}

class _RecommendationsSectionMobileState
    extends State<RecommendationsSectionMobile> {
  final PageController _pageController = PageController(viewportFraction: 0.85);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 64.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Recommendations',
            style: AppTextStyles.font32WhiteBold,
          ).animate().fadeIn().slideY(begin: 0.1),
          SizedBox(height: 12.h),
          Text(
            'Here’s what people say about working with me.',
            style: TextStyle(fontSize: 14, color: AppColors.text),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40.h),

          /// Scrollable PageView
          SizedBox(
            height: 0.6.sh,
            child: PageView.builder(
              controller: _pageController,
              itemCount: recommendations.length,
              onPageChanged: (index) => setState(() => currentIndex = index),
              itemBuilder: (context, index) {
                final testimonial = recommendations[index];
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 12.w),
                  padding: EdgeInsets.symmetric(
                    vertical: 30.h,
                    horizontal: 24.w,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(testimonial.image),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        testimonial.name,
                        style: AppTextStyles.font16PrimaryBold,
                      ),
                      Text(
                        testimonial.role,
                        style: AppTextStyles.font14White,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        '"${testimonial.comment}"',
                        textAlign: TextAlign.justify,
                        style: AppTextStyles.font12Text,
                        // maxLines: 10,
                        // overflow: TextOverflow.ellipsis,
                      ),
                      Spacer(),
                      Wrap(
                        spacing: 12.w,
                        children:
                            testimonial.socialLinks.map((social) {
                              return InkWell(
                                onTap: () => launchUrl(Uri.parse(social.link)),
                                child: SvgPicture.asset(
                                  social.icon,
                                  width: 30,
                                  colorFilter: ColorFilter.mode(
                                    AppColors.white,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              );
                            }).toList(),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 20.h),

          /// Dot Indicators
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(recommendations.length, (index) {
              final isActive = index == currentIndex;
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 6.w),
                width: isActive ? 16 : 8,
                height: 8.h,
                decoration: BoxDecoration(
                  color:
                      isActive
                          ? AppColors.primary
                          : AppColors.white.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(4.r),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
