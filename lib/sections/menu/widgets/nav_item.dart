import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/sections/menu/bloc/nav_bloc.dart';
import 'package:pankaj_portfolio/sections/menu/bloc/nav_event.dart';
import 'package:pankaj_portfolio/sections/menu/bloc/nav_state.dart';

class NavItem extends StatefulWidget {
  final String title;
  final double? fontSize;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.title,
    this.fontSize = Dimens.fontSize16,
    required this.onTap,
  });

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBloc, NavState>(
      builder: (context, state) {
        final isActive = state.activeSection == widget.title;

        return MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: GestureDetector(
            onTap: () {
              context.read<NavBloc>().add(
                SetActiveSection(widget.title),
              );

              widget.onTap();
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: isActive
                    ? AppColors.primary.withValues(alpha: 0.1)
                    : isHovered
                    ? AppColors.primary.withValues(alpha: 0.05)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 200),
                style: TextStyle(
                  fontSize: Dimens.fontSize16,
                  fontWeight:
                  isActive ? FontWeight.w600 : FontWeight.normal,
                  color: isActive
                      ? AppColors.primary
                      : isHovered
                      ? AppColors.primary
                      : AppColors.darkText,
                ),
                child: Text(widget.title),
              ),
            ),
          ),
        );
      },
    );
  }
}