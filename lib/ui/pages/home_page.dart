import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/ui/widgets/header_section.dart';
import 'package:my_portfolio/ui/widgets/about_section.dart';
import 'package:my_portfolio/ui/widgets/skills_section.dart';
import 'package:my_portfolio/ui/widgets/projects_section.dart';
import 'package:my_portfolio/ui/widgets/navbar_and_footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavbarDrawer(controller: _scrollController),

      body: Stack(
        children: [
          /// Scrollable body
          Padding(
            padding: EdgeInsets.only(top: 60.h),
            child: SingleChildScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  HeaderSection(),
                  AboutSection(),
                  SkillsSection(),
                  ProjectsSection(),
                  Footer(),
                ],
              ),
            ),
          ),

          /// Top Navbar (floating)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: TopNavbar(controller: _scrollController),
          ),
        ],
      ),
    );
  }
}
