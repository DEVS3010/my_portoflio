import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/data/portfolio_data.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/app_colors.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 64.h, horizontal: 24.w),
      color: AppColors.background,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 800;

          return Flex(
            direction: isMobile ? Axis.vertical : Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Left: Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Contact Info',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        )),
                    SizedBox(height: 20.h),
                    _contactItem(Icons.location_on, 'Riyadh, Saudi Arabia'),
                    _contactItem(Icons.email, 'mahmoud3laa2210@gmail.com'),
                    _contactItem(Icons.phone, '+966 500000000'),
                    SizedBox(height: 24.h),
                    Text('Follow Me',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white)),
                    SizedBox(height: 12.h),
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
                      )
                  ],
                ),
              ),

              SizedBox(width: isMobile ? 0 : 40.w, height: isMobile ? 40.h : 0),

              /// Right: Form
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Send Me a Message',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        )),
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
                      label: Text('Send Message',
                          style: TextStyle(fontSize: 16.sp,color: AppColors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.w, vertical: 14.h),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget _contactItem(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Icon(icon, color: AppColors.primary, size: 20.sp),
          SizedBox(width: 12.w),
          Text(text, style: TextStyle(color: AppColors.white, fontSize: 14.sp)),
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
          radius: 18.r,
          backgroundColor: AppColors.white.withOpacity(0.08),
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
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
