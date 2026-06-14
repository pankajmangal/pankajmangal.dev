import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/about/widgets/desktop/feature_card_desktop_widget.dart';
import 'package:pankaj_portfolio/sections/about/widgets/desktop/skills_toolkit_desktop_widget.dart';
import 'package:pankaj_portfolio/widgets/texts/section_description.dart';
import 'package:pankaj_portfolio/widgets/texts/section_header.dart';
import 'package:pankaj_portfolio/widgets/texts/section_title.dart';

class AboutDesktopLayout extends StatelessWidget {
  const AboutDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ScrollManager.aboutKey,
      padding: desktopPaddingSymmetry,
      color: AppColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: Strings.about.toUpperCase(),
            fontSize: Dimens.fontSize14, fontWeight: FontWeight.w500,),
          const SizedBox(height: 16),
          SizedBox(
            width: 900,
            child: SectionTitle(title: Strings.aboutTitle,
              fontSize: Dimens.fontSize32, fontWeight: FontWeight.w700,),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: 900,
            child: SectionDescription(title: Strings.aboutDesc,
              fontSize: Dimens.fontSize16, fontWeight: FontWeight.w400,),
          ),
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
