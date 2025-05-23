import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/portfolio_data.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 48.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Left Side (Text Content)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hi I am', style: TextStyle(color: Colors.grey, fontSize: 18.sp)),
                Text(profile.name,
                    style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500)),
                SizedBox(height: 8.h),
                Text(
                  profile.profile,
                  style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ).animate().fadeIn(duration: 400.ms).slideX(begin: -0.1),
                SizedBox(height: 24.h),

                /// Social Icons
                Row(
                  children: profile.socialLinks.map((social) {
                    return Padding(
                      padding: EdgeInsets.only(right: 12.w),
                      child: InkWell(
                        onTap: () => launchUrl(Uri.parse(social.link)),
                        child: Image.asset(social.icon, width: 28.w),
                      ),
                    );
                  }).toList(),
                ),

                SizedBox(height: 24.h),

                /// Buttons
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse("mailto:${profile.email}"));
                      },
                      child: const Text("Hire Me"),
                    ),
                    SizedBox(width: 16.w),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
                        side: const BorderSide(color: Colors.white),
                      ),
                      onPressed: () => launchUrl(Uri.parse(profile.cvLink)),
                      child: const Text("Download CV"),
                    ),
                  ],
                ),

                SizedBox(height: 32.h),

                /// Stats
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStat("5+", "Experiences"),
                      _buildStat("20+", "Project done"),
                      _buildStat("80+", "Happy Clients"),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 32.w),

          /// Right Side (Profile Image)
          Expanded(
            child: Center(
              child: CircleAvatar(
                radius: 150.r,
                backgroundImage: AssetImage(profile.photo),
              ).animate().fadeIn(duration: 600.ms).scale(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String value, String label) {
    return Column(
      children: [
        Text(value, style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
        SizedBox(height: 4.h),
        Text(label, style: TextStyle(fontSize: 14.sp, color: Colors.grey)),
      ],
    );
  }
}
