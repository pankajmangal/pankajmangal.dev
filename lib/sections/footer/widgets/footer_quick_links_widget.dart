import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/sections/footer/model/footer_item_model.dart';
import 'package:pankaj_portfolio/sections/footer/widgets/footer_column_widget.dart';

class FooterQuickLinksWidget extends StatelessWidget {
  const FooterQuickLinksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FooterColumnWidget(
      title: 'Quick Links',
      items: [
        FooterItem(
          label: 'Home',
          onTap: () => ScrollManager.scrollTo(ScrollManager.heroKey),
        ),
        FooterItem(
          label: 'About',
          onTap: () => ScrollManager.scrollTo(ScrollManager.aboutKey),
        ),
        FooterItem(
          label: 'Skills',
          onTap: () => ScrollManager.scrollTo(ScrollManager.skillsKey),
        ),
        FooterItem(
          label: 'Experiences',
          onTap: () => ScrollManager.scrollTo(ScrollManager.experiencesKey),
        ),
        FooterItem(
          label: 'Projects',
          onTap: () => ScrollManager.scrollTo(ScrollManager.projectsKey),
        ),
        FooterItem(
          label: 'Contact',
          onTap: () => ScrollManager.scrollTo(ScrollManager.contactKey),
        ),
      ],
    );
  }
}
