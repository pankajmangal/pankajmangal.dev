import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/colors.dart';
import 'package:pankaj_portfolio/design_system/components/theme_toggle.dart';

class PortfolioAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PortfolioAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 1,
      automaticallyImplyLeading: false,
      toolbarHeight: 80,
      titleSpacing: 80,
      centerTitle: false,
      title: Text(
        "<FlutterDev />",
        style: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.primary,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: Row(
            children: [
              _navItem("Home"),
              _navItem("About"),
              _navItem("Skills"),
              _navItem("Projects"),
              _navItem("Contact"),
              ThemeToggle(),
            ],
          ),
        )
      ],
    );
  }

  Widget _navItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        title,
        style: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: AppColors.darkText,
        ),
      ),
    );
  }
}