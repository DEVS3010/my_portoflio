import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/portfolio_data.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 48.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.h),
          LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth > 600;
              return Column(
                children:
                    profile.projects.map((project) {
                      return Card(
                        margin: EdgeInsets.only(bottom: 16.h),
                        color: Colors.white10,
                        child: Padding(
                          padding: EdgeInsets.all(16.w),
                          child:
                              isWide
                                  ? Row(
                                    children: [
                                      Image.asset(
                                        project.image,
                                        width: 120.w,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(width: 24.w),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              project.title,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.sp,
                                              ),
                                            ),
                                            SizedBox(height: 8.h),
                                            Text(project.description),
                                            SizedBox(height: 6.h),
                                            Wrap(
                                              spacing: 8.w,
                                              children:
                                                  project.tags
                                                      .map(
                                                        (tag) => Chip(
                                                          label: Text(tag),
                                                        ),
                                                      )
                                                      .toList(),
                                            ),
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.open_in_new),
                                        onPressed:
                                            () => launchUrl(
                                              Uri.parse(project.link),
                                            ),
                                      ),
                                    ],
                                  )
                                  : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          project.image,
                                          height: 160.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(height: 12.h),
                                      Text(
                                        project.title,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      SizedBox(height: 8.h),
                                      Text(project.description),
                                      SizedBox(height: 6.h),
                                      Wrap(
                                        spacing: 8.w,
                                        children:
                                            project.tags
                                                .map(
                                                  (tag) =>
                                                      Chip(label: Text(tag)),
                                                )
                                                .toList(),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: TextButton.icon(
                                          onPressed:
                                              () => launchUrl(
                                                Uri.parse(project.link),
                                              ),
                                          icon: const Icon(Icons.open_in_new),
                                          label: const Text("Open"),
                                        ),
                                      ),
                                    ],
                                  ),
                        ),
                      ).animate().fadeIn();
                    }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
