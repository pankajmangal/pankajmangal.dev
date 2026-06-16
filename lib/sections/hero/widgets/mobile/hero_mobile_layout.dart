import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/download_cv_button_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/hero_description_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/hero_heading_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/hero_image_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/hero_social_icons.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/mobile/hero_mobile_stats_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/open_to_work_badge.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/view_projects_button_widget.dart';

class HeroMobileLayout extends StatelessWidget {
  const HeroMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: ScrollManager.heroKey,
      children: [
        HeroImageWidget(),
        const SizedBox(height: 48),
        const OpenToWorkBadge(),
        const SizedBox(height: 32),
        HeroHeadingWidget(),
        const SizedBox(height: 20),
        HeroDescriptionWidget(),
        const SizedBox(height: 28),
        Column(
          children: [
            ViewProjectsButtonWidget(),
            const SizedBox(height: 16),
            DownloadCvButtonWidget(),
          ],
        ),

        const SizedBox(height: 24),
        const HeroSocialIcons(),
        const SizedBox(height: 50),
        const HeroMobileStatsWidget(),
      ],
    );
  }
}