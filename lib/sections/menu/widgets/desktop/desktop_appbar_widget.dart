import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/menu/widgets/nav_item.dart';

class DesktopAppbarWidget extends StatelessWidget {
  const DesktopAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 80),
      child: Row(
        children: [
          NavItem(
            title: Strings.home,
            onTap: () => ScrollManager.scrollTo(ScrollManager.heroKey),
          ),
          NavItem(
            title: Strings.about,
            onTap: () => ScrollManager.scrollTo(ScrollManager.aboutKey),
          ),
          NavItem(
            title: Strings.skills,
            onTap: () => ScrollManager.scrollTo(ScrollManager.skillsKey),
          ),
          NavItem(
            title: Strings.experiences,
            onTap: () => ScrollManager.scrollTo(ScrollManager.experiencesKey),
          ),
          NavItem(
            title: Strings.projects,
            onTap: () => ScrollManager.scrollTo(ScrollManager.projectsKey),
          ),
          NavItem(
            title: Strings.contact,
            onTap: () => ScrollManager.scrollTo(ScrollManager.contactKey),
          ),
        ],
      ),
    );
  }
}
