import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/desktop/experience_desktop_widget.dart';
import 'package:pankaj_portfolio/sections/experiences/widgets/mobile/experience_mobile_widget.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (context.isMobile) {
          return ExperienceMobileWidget();
        }
        return ExperienceDesktopWidget();
      },
    );
  }
}
