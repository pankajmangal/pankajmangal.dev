import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/widgets/items/nav_item.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 60),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Strings.devName,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          /// MENU
          Row(
            children: [
              NavItem(
                title: Strings.home,
                onTap: () =>
                    ScrollManager.scrollTo(ScrollManager.heroKey),
              ),
              NavItem(
                title: Strings.about,
                onTap: () =>
                    ScrollManager.scrollTo(ScrollManager.aboutKey),
              ),
              NavItem(
                title: Strings.skills,
                onTap: () =>
                    ScrollManager.scrollTo(ScrollManager.skillsKey),
              ),
              NavItem(
                title: Strings.projects,
                onTap: () =>
                    ScrollManager.scrollTo(ScrollManager.projectsKey),
              ),
              NavItem(
                title: Strings.contact,
                onTap: () =>
                    ScrollManager.scrollTo(ScrollManager.contactKey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}