import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/desktop/footer_desktop_bottom_bar.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_expertise_widget.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_header_widget.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_quick_links_widget.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_social_widget.dart';

class FooterTabletLayout extends StatelessWidget {
  const FooterTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFF0B1A2F),
      padding: EdgeInsets.symmetric(
        horizontal: context.horizontalPadding,
        vertical: context.sectionVerticalPadding,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FooterHeaderWidget(),
              FooterQuickLinksWidget(),
              FooterExpertiseWidget(),
            ],
          ),
          FooterSocialWidget(openLinkByLauncher),
          FooterDesktopBottomBar(),
        ],
      ),
    );
  }
}
