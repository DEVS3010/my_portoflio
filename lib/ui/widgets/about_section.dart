// Modular sections using portfolio_data
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../data/portfolio_data.dart';

/// About Section
class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 48.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About Me', style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold)),
          SizedBox(height: 12.h),
          Text(profile.about, style: TextStyle(fontSize: 16.sp, color: Colors.white70)),
        ],
      ).animate().fadeIn().slideY(begin: 0.1),
    );
  }
}



