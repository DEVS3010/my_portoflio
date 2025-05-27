// main.dart with AppColors theme
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/app_colors.dart';
import 'core/app_scroll_behavior.dart';
import 'ui/pages/home_page.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      builder:
          (_, __) => MaterialApp(
            scrollBehavior: AppScrollBehavior(),
            debugShowCheckedModeBanner: false,
            title: 'Mahmoud Alaa Portfolio',
            theme: ThemeData.dark(useMaterial3: true).copyWith(
              scaffoldBackgroundColor: AppColors.background,
              primaryColor: AppColors.primary,
              cardColor: AppColors.surface,
              textTheme: Typography.whiteMountainView.apply(
                bodyColor: AppColors.white,
                displayColor: AppColors.white,
              ),
            ),
            home: const HomePage(),
          ),
    );
  }
}
