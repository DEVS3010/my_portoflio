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
  void initState() {
    super.initState();
    _scrollController.addListener(_updateActiveSection);
  }

  void _updateActiveSection() {
    for (final entry in sectionKeys.entries) {
      final keyContext = entry.value.currentContext;
      if (keyContext != null) {
        final box = keyContext.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero).dy;

        // إذا كان أعلى القسم مرئي تقريبًا
        if (position >= 0 &&
            position < MediaQuery.of(context).size.height / 2) {
          if (activeSection != entry.key) {
            setState(() {
              activeSection = entry.key;
            });
          }
          break;
        }
      }
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

      body: SafeArea(
        child: Stack(
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
                    KeyedSubtree(
                      key: GlobalKey(),
                      child: sections[0].section,
                    ),
                    KeyedSubtree(
                      key: GlobalKey(),
                      child: sections[1].section,
                    ),
                    KeyedSubtree(
                      key: GlobalKey(),
                      child: sections[2].section,
                    ),
                    KeyedSubtree(
                      key: GlobalKey(),
                      child: sections[3].section,
                    ),
                    KeyedSubtree(
                      key: GlobalKey(),
                      child: sections[4].section,
                    ),
                    KeyedSubtree(
                      key: GlobalKey(),
                      child: sections[5].section,
                    ),
                    KeyedSubtree(
                      key: GlobalKey(),
                      child: sections[6].section,
                    ),
                    // ...sections.map((section) {
                    //   final key = sectionKeys[section.name];
                    //   return KeyedSubtree(
                    //     key: key,
                    //     child: section.section,
                    //   );
                    // }),
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
      ),
    );
  }
}
