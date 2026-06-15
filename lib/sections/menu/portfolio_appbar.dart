import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/extensions/responsive_extensions.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/sections/menu/widgets/desktop/desktop_portfolio_header.dart';
import 'package:pankaj_portfolio/sections/menu/widgets/menu_button.dart';
import 'package:pankaj_portfolio/widgets/logo/portfolio_logo.dart';

class PortfolioAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PortfolioAppBar({
    super.key,
    required this.isMenuOpen,
    required this.onMenuTap,
  });

  final bool isMenuOpen;
  final VoidCallback onMenuTap;

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    if (!context.isMobile) {
      return const DesktopPortfolioHeader();
    }

    return AppBar(
      backgroundColor: AppColors.whiteColor,
      elevation: 1,
      automaticallyImplyLeading: false,
      toolbarHeight: 80,
      titleSpacing: 20,
      centerTitle: false,
      title: const PortfolioLogo(),
      actions: [MenuButton(isMenuOpen: isMenuOpen, onTap: onMenuTap)],
    );
  }
}
