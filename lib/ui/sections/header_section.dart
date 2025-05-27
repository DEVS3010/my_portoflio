import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/app_colors.dart';
import '../../../data/portfolio_data.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 24.w),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 700;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isMobile
                  ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildText(context, isMobile),
                      const SizedBox(height: 32),
                      _buildPhoto(),
                    ],
                  )
                  : Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: _buildText(context, isMobile)),
                      SizedBox(width: 40.w),
                      _buildPhoto(),
                    ],
                  ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildText(BuildContext context, bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hi I am', style: TextStyle(color: Colors.grey, fontSize: 24.sp)),
        Text(
          profile.name,
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
        ),
        SizedBox(height: 8.h),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 100.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(text: '${profile.profile.split(' ').first} \n'),
              TextSpan(
                text:
                    '\t \t \t \t ${profile.profile.split(' ').skip(1).join(' ')}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Text(
          profile.profileSummary,
          style: TextStyle(fontSize: 21.sp, color: AppColors.white),
        ),
        SizedBox(height: 24.h),
        // Wrap(
        //   spacing: 12.w,
        //   children:
        //       profile.socialLinks.map((social) {
        //         return InkWell(
        //           onTap: () => launchUrl(Uri.parse(social.link)),
        //           child: Image.asset(social.icon, width: 28.w),
        //         );
        //       }).toList(),
        // ),
        SizedBox(height: 24.h),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            backgroundColor: AppColors.primary,
          ),
          onPressed: () => launchUrl(Uri.parse("mailto:${profile.email}")),
          child: Text(
            "Hire Me",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
        ),
        // Row(
        //   children: [
        //     ElevatedButton(
        //       style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
        //       onPressed: () => launchUrl(Uri.parse("mailto:${profile.email}")),
        //       child: const Text("Hire Me"),
        //     ),
        //     SizedBox(width: 16.w),
        //     OutlinedButton(
        //       onPressed: () => launchUrl(Uri.parse(profile.cvLink)),
        //       child: const Text("Download CV"),
        //     ),
        //   ],
        // ),
        SizedBox(height: 32.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          height: 150.h,
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStat("5+", "Experiences"),
              VerticalDivider(color: AppColors.grey),
              _buildStat("20+", "Project done"),
              VerticalDivider(color: AppColors.grey),
              _buildStat("80+", "Happy Clients"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPhoto() {
    return Column(
      children: [
        Image.asset(
          profile.photo,
          width: 400.w,
        ).animate().fadeIn(duration: 600.ms).scale(),
        SizedBox(height: 30.h),
        Wrap(
          spacing: 12.w,
          children:
              profile.socialLinks.map((social) {
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
    );
  }
  // Widget _buildPhoto() {
  //   return Stack(
  //     alignment: Alignment.bottomCenter,
  //     children: [
  //       CircleAvatar(
  //         radius: 350.r,
  //         backgroundColor: AppColors.white.withValues(alpha: 0.4),
  //       ).animate().fadeIn(duration: 600.ms).scale(),
  //       CircleAvatar(
  //         radius: 350.r,
  //         backgroundImage: AssetImage(profile.photo),
  //         backgroundColor: Colors.transparent,
  //       ).animate().fadeIn(duration: 600.ms).scale(),
  //     ],
  //   );
  // }

  Widget _buildStat(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        SizedBox(height: 4.h),
        Text(label, style: TextStyle(fontSize: 20.sp, color: AppColors.grey)),
      ],
    );
  }
}
