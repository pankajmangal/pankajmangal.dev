import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/sections/about/widgets/about_header_widget.dart';
import 'package:pankaj_portfolio/sections/about/widgets/desktop/feature_card_desktop_widget.dart';
import 'package:pankaj_portfolio/sections/about/widgets/desktop/skills_toolkit_desktop_widget.dart';

class AboutDesktopLayout extends StatelessWidget {
  const AboutDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollManager.aboutKey,
      padding: EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 60,
      ),
      color: AppColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AboutHeaderWidget(),
          const SizedBox(height: 64),
          FeatureCardDesktopWidget(),
          const SizedBox(height: 48),
          SkillsToolkitDesktopWidget(),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}
