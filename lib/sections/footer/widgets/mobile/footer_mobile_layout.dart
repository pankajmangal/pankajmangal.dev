import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/core/utils/app_constants.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_expertise_widget.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_header_widget.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_quick_links_widget.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_social_widget.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/mobile/footer_mobile_bottom_bar.dart';

class FooterMobileLayout extends StatelessWidget {
  const FooterMobileLayout({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FooterHeaderWidget(),
          const SizedBox(height: 30),
          FooterQuickLinksWidget(),
          const SizedBox(height: 30),
          FooterExpertiseWidget(),
          const SizedBox(height: 30),
          FooterSocialWidget(openLinkByLauncher),
          FooterMobileBottomBar(),
        ],
      ),
    );
  }
}
