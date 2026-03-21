import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/sections/skills/widgets/desktop/skills_desktop_layout.dart';
import 'package:pankaj_portfolio/sections/skills/widgets/mobile/skills_mobile_layout.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (context.isMobile) return SkillsMobileLayout();
        return SkillsDesktopLayout();
      },
    );
  }
}