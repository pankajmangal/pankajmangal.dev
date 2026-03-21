import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class AboutCard extends StatefulWidget {
  final String title;
  final String description;
  final String icon;

  const AboutCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  State<AboutCard> createState() => _AboutCardState();
}

class _AboutCardState extends State<AboutCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        padding: const EdgeInsets.all(Dimens.padding22),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: isHover
                  ? const Color(0xFF2563EB).withValues(alpha: 0.25)
                  : Colors.black.withValues(alpha: 0.05),
              blurRadius: isHover ? 30 : 10,
              spreadRadius: isHover ? 2 : 0,
              offset: const Offset(0, 12),
            ),
          ],
          border: Border.all(
            color: isHover
                ? const Color(0xFF2563EB)
                : Colors.transparent,
            width: 1.5,
          ),
        ),
        // transform: Matrix4.identity()
        //   ..translateByDouble(0.0, isHover ? -8 : 0.0, 0.0, 0.0),

        child: _cardContent(),
      ),
    );
  }

  Widget _cardContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isHover
                ? AppColors.primary.withValues(alpha: 0.1)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            widget.icon,
            colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            width: 26, height: 26,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          widget.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: Dimens.fontSize18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: Text(
            widget.description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey[600],
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}