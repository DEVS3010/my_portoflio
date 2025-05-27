import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/app_colors.dart';

class ProjectTagWidget extends StatelessWidget {
  final String tag;

  const ProjectTagWidget({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(tag, style: TextStyle(fontSize: 12.sp)),
      backgroundColor: AppColors.white.withOpacity(0.08),
    );
  }
}
