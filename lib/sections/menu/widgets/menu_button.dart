import 'package:flutter/material.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key,
    required this.isMenuOpen,
    required this.onTap,
  });

  final bool isMenuOpen;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: IconButton(
        onPressed: onTap,
        icon: AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          transitionBuilder: (child, animation) {
            return RotationTransition(
              turns: animation,
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
          child: Icon(
            isMenuOpen ? Icons.close : Icons.menu,
            key: ValueKey(isMenuOpen),
            size: 28,
            color: AppColors.darkText,
          ),
        ),
      ),
    );
  }
}