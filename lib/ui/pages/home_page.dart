import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/ui/layout/navbar_and_footer.dart';

import '../../data/sections_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  String activeSection = 'Home';

  /// Scroll to section by name
  void scrollToSection(String name) {
    final key = sectionKeys[name];
    if (key?.currentContext != null) {
      Scrollable.ensureVisible(
        key!.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavbarDrawer(
        scrollToSection: (name) {
          scrollToSection(name);
          setState(() => activeSection = name);
        },
      ),

      body: Stack(
        children: [
          /// Scrollable Body
          Padding(
            padding: EdgeInsets.only(top: 70.h),
            child: SingleChildScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...sections.map((section) {
                    final key = sectionKeys[section.name];
                    return KeyedSubtree(
                      key: key,
                      child: section.section,
                    );
                  }),
                  Footer(
                    onBackToTop: () {
                      scrollToSection('Home');
                      setState(() => activeSection = 'Home');
                    },
                  ),
                ],
              ),
            ),
          ),

          /// Top Navbar Floating
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: TopNavbar(
              activeSection: activeSection,
              scrollToSection: (name) {
                scrollToSection(name);
                setState(() => activeSection = name);
              },
            ),
          ),
        ],
      ),
    );
  }
}
