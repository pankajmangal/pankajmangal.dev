import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/widgets/items/nav_item.dart';

class PortfolioAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PortfolioAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    bool isMobile = context.isMobile;
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 1,
      automaticallyImplyLeading: false,
      toolbarHeight: 80,
      titleSpacing: 80,
      centerTitle: false,
      title: Text(
        Strings.devName,
        style: GoogleFonts.inter(
          fontSize: Dimens.fontSize18,
          fontWeight: FontWeight.bold,
          color: AppColors.primary,
        ),
      ),
      actions: !isMobile
          ? [
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Row(
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
                      title: Strings.experiences,
                      onTap: () =>
                          ScrollManager.scrollTo(ScrollManager.projectsKey),
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
                    // ThemeToggle(),
                  ],
                ),
              ),
            ]
          : [
              Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              ),
            ],
    );
  }
}
