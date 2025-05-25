// Responsive TopNavbar with Drawer on small screens
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopNavbar extends StatelessWidget {
  final ScrollController controller;
  const TopNavbar({super.key, required this.controller});

  void scrollTo(double offset) => controller.animateTo(
        offset,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 700;

        return Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          width: double.infinity,
          height: 60.h,
          color: Colors.transparent,
          child: isMobile ? _buildMobileNavbar(context) : _buildDesktopNavbar(),
        );
      },
    );
  }

  Widget _buildMobileNavbar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Mahmoud Alaa', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
        Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          ),
        )
      ],
    );
  }

  Widget _buildDesktopNavbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Mahmoud Alaa', style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
        Row(
          children: [
            _navButton('Home', 0),
            _navButton('About', 600),
            _navButton('Skills', 1100),
            _navButton('Projects', 1600),
            _navButton('Contact', 2100),
          ],
        )
      ],
    );
  }

  Widget _navButton(String label, double offset) {
    return TextButton(
      onPressed: () => scrollTo(offset),
      child: Text(label, style: TextStyle(color: Colors.white, fontSize: 14.sp)),
    );
  }
}

class NavbarDrawer extends StatelessWidget {
  final ScrollController controller;
  const NavbarDrawer({super.key, required this.controller});

  void scrollTo(BuildContext context, double offset) {
    Navigator.pop(context);
    controller.animateTo(offset, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade900,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.black87),
            child: Text('Mahmoud Alaa', style: TextStyle(color: Colors.white, fontSize: 18.sp)),
          ),
          _drawerItem(context, 'Home', 0),
          _drawerItem(context, 'About', 600),
          _drawerItem(context, 'Skills', 1100),
          _drawerItem(context, 'Projects', 1600),
          _drawerItem(context, 'Contact', 2100),
        ],
      ),
    );
  }

  Widget _drawerItem(BuildContext context, String label, double offset) {
    return ListTile(
      title: Text(label, style: const TextStyle(color: Colors.white)),
      onTap: () => scrollTo(context, offset),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black12,
      padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 24.w),
      child: Column(
        children: [
          Text('© 2025 Mahmoud Alaa. All rights reserved.', style: TextStyle(color: Colors.grey, fontSize: 12.sp)),
          SizedBox(height: 12.h),
          TextButton(
            onPressed: () => Scrollable.ensureVisible(
              context.findRenderObject()! as BuildContext,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
            ),
            child: const Text('Back to Top'),
          )
        ],
      ),
    );
  }
}
