import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/about/widgets/about_card.dart';
import 'package:pankaj_portfolio/sections/about/widgets/about_header_widget.dart';
import 'package:pankaj_portfolio/sections/about/widgets/about_left_content.dart';
import 'package:pankaj_portfolio/sections/about/widgets/mobile/feature_card_mobile_widget.dart';
import 'package:pankaj_portfolio/sections/about/widgets/mobile/skills_toolkit_mobile_widget.dart';

class AboutMobileLayout extends StatelessWidget {
  const AboutMobileLayout({super.key});

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
          FeatureCardMobileWidget(),
          const SizedBox(height: 48),
          SkillsToolkitMobileWidget(),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}