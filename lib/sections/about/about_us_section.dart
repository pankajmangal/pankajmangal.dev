import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/sections/about/widgets/desktop/about_desktop_layout.dart';
import 'package:pankaj_portfolio/sections/about/widgets/mobile/about_mobile_layout.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (context.isMobile) return AboutMobileLayout();
        return AboutDesktopLayout();
      },
    );
  }
}