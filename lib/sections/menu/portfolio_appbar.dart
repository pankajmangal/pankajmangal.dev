import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';
import 'package:pankaj_portfolio/sections/menu/widgets/desktop/desktop_appbar_widget.dart';
import 'package:pankaj_portfolio/sections/menu/widgets/mobile/mobile_appbar_widget.dart';

class PortfolioAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PortfolioAppBar({super.key, required this.controller});

  final AnimationController controller;

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
              DesktopAppbarWidget(),
              // ThemeToggle(),
            ]
          : [MobileAppbarWidget(controller: controller)],
    );
  }
}
