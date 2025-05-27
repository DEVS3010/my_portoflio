import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/app_colors.dart';
import '../../../data/testimonials_data.dart';
import '../../../models/testimonial_model.dart';

class TestimonialsSection extends StatefulWidget {
  const TestimonialsSection({super.key});

  @override
  State<TestimonialsSection> createState() => _TestimonialsSectionState();
}

class _TestimonialsSectionState extends State<TestimonialsSection> {
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
            'Testimonials',
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            'Here’s what people say about working with me.',
            style: TextStyle(fontSize: 14.sp, color: AppColors.text),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40.h),

          /// Scrollable PageView
          SizedBox(
            height: 350.h,
            child: PageView.builder(
              controller: _pageController,
              itemCount: testimonials.length,
              onPageChanged: (index) => setState(() => currentIndex = index),
              itemBuilder: (context, index) {
                final testimonial = testimonials[index];
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 12.w),
                  padding: EdgeInsets.all(24.w),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 36.r,
                        backgroundImage: AssetImage(testimonial.image),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        '"${testimonial.comment}"',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.text,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        testimonial.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                          color: AppColors.white,
                        ),
                      ),
                      Text(
                        testimonial.role,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColors.text,
                        ),
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
                                  width: 28.w,
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
            children: List.generate(testimonials.length, (index) {
              final isActive = index == currentIndex;
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 6.w),
                width: isActive ? 16.w : 8.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color:
                      isActive
                          ? AppColors.primary
                          : AppColors.white.withOpacity(0.3),
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
