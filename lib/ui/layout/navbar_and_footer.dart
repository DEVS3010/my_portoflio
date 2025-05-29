import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/app_colors.dart';
import '../../../data/sections_data.dart';
import '../../core/responsive_helper.dart';

class TopNavbar extends StatelessWidget {
  final Function(String) scrollToSection;
  final String activeSection;

  const TopNavbar({
    super.key,
    required this.scrollToSection,
    required this.activeSection,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = Responsive.isMobile(context);

        return Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          width: double.infinity,
          color: Colors.transparent,
          child:
              isMobile
                  ? _buildMobileNavbar(context)
                  : _buildDesktopNavbar(context),
        );
      },
    );
  }

  Widget _buildMobileNavbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _logoInTheCenter(),
        Builder(
          builder:
              (context) => IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
              ),
        ),
      ],
    );
  }

  Widget _buildDesktopNavbar(BuildContext context) {
    final sectionNames = sectionKeys.keys.toList();
    final mid = (sectionNames.length / 2).floor();

    final leftItems = sectionNames.sublist(0, mid);
    final rightItems = sectionNames.sublist(mid);

    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        height: 60.h,
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(40.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Left Items
            ...leftItems.map((name) => _navItem(name)),

            // Logo in the center
            _logoInTheCenter(),

            // Right Items
            ...rightItems.map((name) => _navItem(name)),
          ],
        ),
      ),
    );
  }

  Widget _navItem(String name) {
    final isActive = name.toLowerCase() == activeSection.toLowerCase();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: GestureDetector(
        onTap: () {
          scrollToSection(name);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Text(
            name,
            style: TextStyle(
              color: isActive ? Colors.white : AppColors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }
}

Widget _logoInTheCenter() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24.w),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primary,
          radius: 18.r,
          child: const Text(
            'M',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          'MAHMOUD',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.white,
            fontSize: 16.sp,
          ),
        ),
      ],
    ),
  );
}

class NavbarDrawer extends StatelessWidget {
  final Function(String) scrollToSection;
  final String activeSection;

  const NavbarDrawer({
    super.key,
    required this.scrollToSection,
    required this.activeSection,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade900,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: AppColors.background),
            child: _logoInTheCenter(),
          ),
          ...sectionKeys.keys.map(
            (name) {
              final isActive = name.toLowerCase() == activeSection.toLowerCase();
              return ListTile(
                title: Text(
                  name,
                  style: TextStyle(
                    color: isActive ? AppColors.primary : Colors.white,
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  scrollToSection(name);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}


class Footer extends StatelessWidget {
  final VoidCallback onBackToTop;
  const Footer({super.key, required this.onBackToTop});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black12,
      padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 24.w),
      child: Column(
        children: [
          Text(
            '© 2025 Mahmoud Alaa. All rights reserved.',
            style: TextStyle(color: Colors.grey, fontSize: 12.sp),
          ),
          SizedBox(height: 12.h),
          TextButton(onPressed: onBackToTop, child: const Text('Back to Top')),
        ],
      ),
    );
  }
}
