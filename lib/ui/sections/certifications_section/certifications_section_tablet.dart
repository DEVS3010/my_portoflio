import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/ui/components/app_button_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/app_colors.dart';
import '../../../../data/certifications_data.dart';
import '../../../core/app_text_styles.dart';
import '../../../core/responsive_helper.dart';
import '../../../models/certification_model.dart';

class CertificationsSectionTablet extends StatelessWidget {
  const CertificationsSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      width: double.infinity,
      color: AppColors.background,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 64.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Licenses & Certifications',
            style:
                isMobile
                    ? AppTextStyles.font21White.copyWith(
                      fontWeight: FontWeight.bold,
                    )
                    : AppTextStyles.font32WhiteBold,
          ).animate().fadeIn().slideY(begin: 0.1),
          SizedBox(height: 32.h),
          Wrap(
            spacing: 24.w,
            runSpacing: 24.h,
            alignment: WrapAlignment.center,
            children:
                certifications.map((cert) => _certCard(context, cert)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _certCard(BuildContext context, CertificationModel cert) {
    return Container(
      width: 300.w,
      height: 300.h,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(cert.title, style: AppTextStyles.font16PrimaryBold),
          SizedBox(height: 8.h),
          Text(
            cert.issuer,
            style: AppTextStyles.font14.copyWith(color: AppColors.text),
          ),
          Text(cert.date, style: AppTextStyles.font12Text),
          if (cert.credentialUrl != null) ...[
            Spacer(),

            AppButtonWidget(
              title: 'View Certificate',
              onPressed: () => launchUrl(Uri.parse(cert.credentialUrl!)),
              hasBorder: true,
              icon: Icons.open_in_new,
              color: AppColors.primary,
              style: AppTextStyles.font14.copyWith(color: AppColors.white),
            ),
          ],
        ],
      ),
    );
  }
}
