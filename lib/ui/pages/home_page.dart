import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/portfolio_data.dart';
import '../widgets/header_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      builder: (context, child) {
        return Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Header
                    const HeaderSection(),


                /// About
                Text("About Me", style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)),
                SizedBox(height: 8.h),
                Text(profile.about, style: TextStyle(fontSize: 16.sp)).animate().fadeIn(duration: 500.ms),

                SizedBox(height: 32.h),

                /// Skills
                Text("Skills", style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)),
                SizedBox(height: 8.h),
                Wrap(
                  spacing: 12.w,
                  runSpacing: 12.h,
                  children: profile.skills.map((skill) {
                    return Chip(label: Text(skill.name));
                  }).toList(),
                ).animate().fadeIn(duration: 500.ms).slideX(begin: -0.1),

                SizedBox(height: 32.h),

                /// Experience
                Text("Experience", style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)),
                ...profile.experiences.map((exp) {
                  return ListTile(
                    leading: Image.asset(exp.image, width: 48.w),
                    title: Text(exp.title, style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("${exp.duration} • ${exp.type}\n${exp.description}"),
                    contentPadding: EdgeInsets.symmetric(vertical: 8.h),
                  ).animate().fadeIn(duration: 500.ms);
                }),

                SizedBox(height: 32.h),

                /// Projects
                Text("Projects", style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)),
                ...profile.projects.map((proj) {
                  return Card(
                    child: ListTile(
                      leading: Image.asset(proj.image, width: 64.w),
                      title: Text(proj.title),
                      subtitle: Text(proj.description),
                      trailing: Icon(Icons.launch),
                      onTap: () => launchUrl(Uri.parse(proj.link)),
                    ),
                  ).animate().fadeIn(duration: 500.ms);
                }),

                SizedBox(height: 32.h),

                /// Contact
                Text("Contact", style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)),
                Wrap(
                  spacing: 12.w,
                  children: profile.socialLinks.map((social) {
                    return IconButton(
                      icon: Image.asset(social.icon, width: 32.w),
                      onPressed: () => launchUrl(Uri.parse(social.link)),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
