// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/app_colors.dart';
import 'package:my_portfolio/core/app_text_styles.dart';

import '../../core/responsive_helper.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    super.key,
    this.icon,
    required this.title,
    required this.onPressed,
    this.hasBorder = false,
    this.color,
  });

  final IconData? icon;
  final String title;
  final Color? color;
  final bool hasBorder;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        backgroundColor: hasBorder ? Colors.transparent : color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0.r),
          side: !hasBorder ? BorderSide.none : BorderSide(color: color!),
        ),
      ),
      onPressed: () => onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Padding(
              padding: EdgeInsets.only(right: 8.0.w),
              child: Icon(icon, size: 24.0.sp, color: AppColors.white),
            ),

          Text(
            title,
            style:
                isMobile
                    ? AppTextStyles.font14White
                    : AppTextStyles.font21White,
          ),
        ],
      ),
    );
  }
}
