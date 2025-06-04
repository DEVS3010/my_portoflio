import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/app_colors.dart';
import '../../../core/responsive_helper.dart';
import '../../../models/project_model.dart';
import '../app_button_widget.dart';

class ProjectCardWidgetMobile extends StatefulWidget {
  final ProjectModel project;

  const ProjectCardWidgetMobile({super.key, required this.project});

  @override
  State<ProjectCardWidgetMobile> createState() =>
      _ProjectCardWidgetMobileState();
}

class _ProjectCardWidgetMobileState extends State<ProjectCardWidgetMobile> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final project = widget.project;

    return Container(
      width: 0.7.sw,
      height: .7.sh,
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
            height: 250.h,
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
                    fontSize: 16,
                    color: AppColors.white,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Text(
                  project.description,
                  style: TextStyle(fontSize: 13, color: AppColors.text),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 12.h),
                Wrap(
                  children:
                      project.tags
                          .map(
                            (tag) => Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                              child: Chip(
                                label: Text(
                                  tag,
                                  style: TextStyle(fontSize: 12),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (project.github != null && project.github!.isNotEmpty)
                  AppButtonWidget(
                    icon: Icons.code,
                    title: 'Code',
                    onPressed: () async {
                      log('Launching URL: ${project.github}');
                      await _launchUrl(project.github!);
                    },
                    color: AppColors.primary,
                    style: AppTextStyles.font14White,
                  ),
                SizedBox(width: 10.w),
                if (project.link.isNotEmpty)
                  AppButtonWidget(
                    icon: Icons.open_in_new,
                    title: 'Live Demo',
                    onPressed: () async => await _launchUrl(project.link),
                    color: AppColors.primary,
                    hasBorder: true,
                    style: AppTextStyles.font14White,
                  ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        log('Could not launch $urlString');
      }
    } catch (e) {
      log('Error launching URL: $urlString, $e');
    }
  }
}
