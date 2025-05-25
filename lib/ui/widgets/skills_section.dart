import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/portfolio_data.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black12,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 48.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.h),
          LayoutBuilder(
            builder: (context, constraints) {
              int columns = constraints.maxWidth > 800 ? 4 : 2;
              return Wrap(
                spacing: 16.w,
                runSpacing: 16.h,
                children:
                    profile.skills.map((skill) {
                      return Chip(
                        label: Text(
                          skill.name,
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        avatar:
                            skill.icon != null
                                ? Image.asset(skill.icon!, width: 20.w)
                                : null,
                      );
                    }).toList(),
              );
            },
          ),
        ],
      ).animate().fadeIn().slideY(begin: 0.1),
    );
  }
}
