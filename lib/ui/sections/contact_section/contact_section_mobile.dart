import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/app_text_styles.dart';
import 'package:my_portfolio/data/portfolio_data.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/app_colors.dart';
import '../../../core/responsive_helper.dart';

class ContactSectionMobile extends StatelessWidget {
  const ContactSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 24.w),
      height: 900.h ,
      color: AppColors.surface,
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Left: Info
          SizedBox(
            height: 350.h ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact Info',
                  style: AppTextStyles.font32WhiteBold,
                ).animate().fadeIn().slideY(begin: 0.1),
                SizedBox(height: 20.h),
                _contactItem(Icons.location_on, 'Riyadh, Saudi Arabia'),
                _contactItem(Icons.email, 'mahmoud3laa2210@gmail.com'),
                _contactItem(Icons.phone, '+966 500000000'),
                SizedBox(height: 24.h),
                Text('Follow Me', style: AppTextStyles.font18WhiteBold),

                SizedBox(height: 12.h),
                Wrap(
                  spacing: 12.w,
                  children:
                      profile.socialLinks.map((social) {
                        return Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 4.w),
                          child: InkWell(
                            onTap: () => launchUrl(Uri.parse(social.link)),
                            child: SvgPicture.asset(
                              social.icon,
                              width: 25,
                              colorFilter: ColorFilter.mode(
                                AppColors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                ),
              ],
            ),
          ),

          SizedBox( height: 10.h),

          /// Right: Form
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Send Me a Message',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(height: 20.h),
                _formField('Your Name', Icons.person),
                SizedBox(height: 12.h),
                _formField('Your Email', Icons.email),
                SizedBox(height: 12.h),
                _formField('Your message', Icons.message, maxLines: 4),
                SizedBox(height: 20.h),
                ElevatedButton.icon(
                  onPressed: () {
                    // Optional: Send logic / mailto
                  },
                  icon: Icon(Icons.send, color: AppColors.white),
                  label: Text(
                    'Send Message',
                    style: TextStyle(fontSize: 16, color: AppColors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w,
                      vertical: 14.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _contactItem(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primary, size: 20),
          SizedBox(width: 12.w),
          Text(
            text,
            style: AppTextStyles.font14White.copyWith(color: AppColors.text),
          ),
        ],
      ),
    );
  }

  Widget _socialIcon(IconData icon, String link) {
    return Padding(
      padding: EdgeInsets.only(right: 12.w),
      child: InkWell(
        onTap: () => launchUrl(Uri.parse(link)),
        child: CircleAvatar(
          radius: 18,
          backgroundColor: AppColors.white.withValues(alpha: 0.08),
          child: Icon(icon, size: 16.sp, color: AppColors.white),
        ),
      ),
    );
  }

  Widget _formField(String hint, IconData icon, {int maxLines = 1}) {
    return TextFormField(
      maxLines: maxLines,
      style: TextStyle(color: AppColors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: AppColors.primary),
        hintText: hint,
        hintStyle: TextStyle(color: AppColors.text),
        filled: true,
        fillColor: AppColors.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.white.withValues(alpha: 0.2)),
        ),
      ),
    );
  }
}
