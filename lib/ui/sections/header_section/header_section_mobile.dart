import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/app_colors.dart';
import 'package:my_portfolio/ui/components/app_button_widget.dart';
import '../../../../data/portfolio_data.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/app_text_styles.dart';
import '../../../core/responsive_helper.dart';

class HeaderSectionMobile extends StatelessWidget {
  const HeaderSectionMobile({super.key});
@override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 24.w),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            // height: 0.88.sh,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildText(),
                      _buildPhoto(),
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Hi I am', style: AppTextStyles.font24Grey),
        Text(profile.name, style: AppTextStyles.font34PrimaryW600),
        SizedBox(height: 8.h),
        RichText(
          text: TextSpan(
            style: AppTextStyles.font100WhiteBold,
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
        Text(profile.profileSummary, style: AppTextStyles.font21White),
        SizedBox(height: 40.h),

        Row(
          children: [
            AppButtonWidget(
              title: "Hire Me",
              onPressed: () => launchUrl(Uri.parse("mailto:${profile.email}")),
              color: AppColors.primary,
            ),
            SizedBox(width: 16.w),
            AppButtonWidget(
              icon: Icons.download,
              title: "Download CV",
              onPressed: () {
                launchUrl(Uri.parse(profile.cvLink));
              },
              color: AppColors.primary,
              hasBorder: true,
            ),
          ],
        ),
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
                    height: 28.h,
                    fit: BoxFit.cover,
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

  Widget _buildStat(String value, String label) {
    return Column(
      children: [
        Text(value, style: AppTextStyles.font24PrimaryBold),
        SizedBox(height: 4.h),
        Text(label, style: TextStyle(fontSize: 20.sp, color: AppColors.grey)),
      ],
    );
  }
}
