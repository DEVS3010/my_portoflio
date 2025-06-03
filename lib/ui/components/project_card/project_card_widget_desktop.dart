import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/app_colors.dart';
import '../../../core/responsive_helper.dart';
import '../../../models/project_model.dart';
import '../app_button_widget.dart';

class ProjectCardWidgetDesktop extends StatefulWidget {
  final ProjectModel project;

  const ProjectCardWidgetDesktop({super.key, required this.project});

  @override
  State<ProjectCardWidgetDesktop> createState() => _ProjectCardWidgetDesktopState();
}

class _ProjectCardWidgetDesktopState extends State<ProjectCardWidgetDesktop> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final project = widget.project;
    final isMobile = Responsive.isMobile(context);

    return Container(
      width: isMobile ? 200.w : 450.w,
      height: isMobile ? 550.h : 900.h,
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Image Carousel
          SizedBox(
            height: isMobile ? 200.h : 400.h,
            child: PageView.builder(
              itemCount: project.images.length,
              onPageChanged: (index) => setState(() => _activeIndex = index),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    project.images[index],
                    // fit: BoxFit.contain,
                    // width: double.infinity,
                  ),
                );
              },
            ),
          ),

          /// Indicators
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(project.images.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
                width: _activeIndex == index ? 14.w : 8.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color:
                      _activeIndex == index
                          ? AppColors.primary
                          : AppColors.white.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(4.r),
                ),
              );
            }),
          ),

          /// Project Info
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: AppColors.white,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Text(
                  project.description,
                  style: TextStyle(fontSize: 13.sp, color: AppColors.text),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 12.h),

                Wrap(
                  children:
                      project.tags
                          .map(
                            (tag) => Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 4.w,
                                vertical: 4.h,
                              ),
                              child: Chip(
                                label: Text(
                                  tag,
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                                backgroundColor: AppColors.white.withValues(
                                  alpha: 0.08,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                ),
              ],
            ),
          ),
          Spacer(),

          /// Buttons
          isMobile
              ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppButtonWidget(
                      icon: Icons.code,
                      title: 'Code',
                      onPressed: () => launchUrl(Uri.parse(project.link)),
                      color: AppColors.primary,
                    ),
                    SizedBox(height: 8.w),
                    AppButtonWidget(
                      icon: Icons.open_in_new,
                      title: 'Live Demo',
                      onPressed: () => launchUrl(Uri.parse(project.link)),
                      color: AppColors.primary,
                      hasBorder: true,
                    ),
                  ],
                ),
              )
              : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButtonWidget(
                    icon: Icons.code,
                    title: 'Code',
                    onPressed: () => launchUrl(Uri.parse(project.link)),
                    color: AppColors.primary,
                  ),
                  SizedBox(width: 16.w),
                  AppButtonWidget(
                    icon: Icons.open_in_new,
                    title: 'Live Demo',
                    onPressed: () => launchUrl(Uri.parse(project.link)),
                    color: AppColors.primary,
                    hasBorder: true,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
