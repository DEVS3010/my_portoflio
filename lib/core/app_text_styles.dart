import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTextStyles {
  //! To named the text style use this format => font + size + color + weight + fontFamily if needed
  //? ----------------- Font 100 -----------------
  static TextStyle font100WhiteBold = TextStyle(
    fontSize: 100.sp,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  //? ----------------- Font 40 -----------------
  static TextStyle font40WhiteBold = TextStyle(
    fontSize: 40.sp,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  //? ----------------- Font 34 -----------------
  static TextStyle font34PrimaryW600 = TextStyle(
    fontSize: 34.0.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );
  //? ----------------- Font 34 -----------------
  static TextStyle font32WhiteBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  //? ----------------- Font 24 -----------------
  static TextStyle font24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle font24PrimaryBold = font24.copyWith(
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );
  static TextStyle font24Grey = font24.copyWith(color: AppColors.grey);
  //? ----------------- Font 20 -----------------
  static TextStyle font20PrimaryW600 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  //? ----------------- Font 21 -----------------
  static TextStyle font21White = TextStyle(
    fontSize: 21.sp,
    color: AppColors.white,
    fontWeight: FontWeight.normal,
  );

  //? ----------------- Font 18
  static TextStyle font18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.normal,
  );
  static TextStyle font18PrimaryBold = font18.copyWith(
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );
  static TextStyle font18WhiteBold = font18.copyWith(
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  //? ----------------- Font 16 -----------------
  static TextStyle font16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
  );
  static TextStyle font16PrimaryBold = font16.copyWith(
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );
  static TextStyle font16Text = font16.copyWith(
    height: 1.6,
    color: AppColors.text,
  );
  static TextStyle font16Grey = font16.copyWith(color: AppColors.grey);
  //? ----------------- Font 14 -----------------
  static TextStyle font14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
  );
  static TextStyle font14White = font14.copyWith(color: AppColors.white);
  static TextStyle font14PrimaryBold = font14.copyWith(
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font14WhiteBold = font14.copyWith(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
  );

  //? ----------------- Font 12 -----------------
  static TextStyle font12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
  );
  static TextStyle font12Text = font12.copyWith(color: AppColors.text);
  static TextStyle font12White = font12.copyWith(color: AppColors.white);
}
