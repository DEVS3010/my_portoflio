import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/app_colors.dart';
import '../../../models/project_model.dart';

class ProjectCardWidget extends StatelessWidget {
  final ProjectModel project;

  const ProjectCardWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Image + link icon
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: Image.asset(project.image,
                    height: 160.h, width: double.infinity, fit: BoxFit.cover),
              ),
              Positioned(
                right: 12,
                bottom: 12,
                child: InkWell(
                  onTap: () => launchUrl(Uri.parse(project.link)),
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundColor: Colors.black87,
                    child: const Icon(Icons.open_in_new, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 12.h),

          /// Tag
          Chip(
            label: Text(
              project.tags.first,
              style: TextStyle(fontSize: 12.sp),
            ),
            backgroundColor: AppColors.white.withOpacity(0.08),
          ),

          SizedBox(height: 12.h),

          /// Title
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

          /// Description (optional)
          Text(
            project.description,
            style: TextStyle(fontSize: 13.sp, color: AppColors.text),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
