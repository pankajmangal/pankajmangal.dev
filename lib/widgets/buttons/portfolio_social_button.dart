import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';

class PortfolioSocialButton extends StatefulWidget {
  final String iconPath;
  final VoidCallback onTap;

  const PortfolioSocialButton({
    super.key,
    required this.iconPath,
    required this.onTap,
  });

  @override
  State<PortfolioSocialButton> createState() => _PortfolioSocialButtonState();
}

class _PortfolioSocialButtonState extends State<PortfolioSocialButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: isHovered
              ? (Matrix4.identity()..scale(1.15))
              : Matrix4.identity(),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isHovered
                ? AppColors
                      .primary // hover color
                : Colors.grey.withValues(alpha: .2),
          ),
          child: SvgPicture.asset(
            widget.iconPath,
            colorFilter: ColorFilter.mode(
              isHovered ? Colors.white : Colors.grey,
              BlendMode.srcIn,
            ),
            width: 24,
            height: 24,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
