import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/download_cv_button_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/hero_description_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/hero_heading_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/hero_image_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/hero_social_icons.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/open_to_work_badge.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/desktop/hero_desktop_stats_widget.dart';
import 'package:pankaj_portfolio/sections/hero/widgets/view_projects_button_widget.dart';

class HeroDesktopLayout extends StatelessWidget {
  const HeroDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: ScrollManager.heroKey,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OpenToWorkBadge(),
                  const SizedBox(height: 8),
                  HeroHeadingWidget(),
                  const SizedBox(height: 30),
                  HeroDescriptionWidget(),
                  const SizedBox(height: 30),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 16,
                    runSpacing: 12,
                    children: [
                      ViewProjectsButtonWidget(),
                      DownloadCvButtonWidget(),
                    ],
                  ),
                  const SizedBox(height: 30),
                  HeroSocialIcons(),
                ],
              ),
            ),
            const SizedBox(width: 80),
            Expanded(
              flex: 5,
              child: HeroImageWidget(),
            ),
          ],
        ),
        const SizedBox(height: 100),
        HeroDesktopStatsWidget()
      ],
    );
  }
}
