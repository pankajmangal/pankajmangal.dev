import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class FeatureCard extends StatefulWidget {
  final String icon;
  final String title;
  final String description;
  final bool active;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    this.active = false,
  });

  @override
  State<FeatureCard> createState() => _FeatureCardState();
}

class _FeatureCardState extends State<FeatureCard> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hovered = true),
      onExit: (_) => setState(() => hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        padding: const EdgeInsets.all(Dimens.padding22),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: hovered
                  ? const Color(0xFF2563EB).withValues(alpha: 0.25)
                  : Colors.black.withValues(alpha: 0.05),
              blurRadius: hovered ? 30 : 10,
              spreadRadius: hovered ? 2 : 0,
              offset: const Offset(0, 12),
            ),
          ],
          border: Border.all(
            color: hovered
                ? const Color(0xFF2563EB)
                : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: _cartContent(),
      ),
    );
  }

  Widget _cartContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: hovered ? const Color(0xff4F46E5) : const Color(0xffEEF2FF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              widget.icon,
              colorFilter: ColorFilter.mode(
                hovered ? Colors.white : const Color(0xff4F46E5),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Text(
          widget.title,
          style: GoogleFonts.inter(
            fontSize: Dimens.fontSize16,
            fontWeight: FontWeight.w700,
            color: const Color(0xff111827),
          ),
        ),
        const SizedBox(height: 6.0),
        Text(
          widget.description,
          style: GoogleFonts.inter(
            fontSize: Dimens.fontSize14,
            height: 1.5,
            color: const Color(0xff6B7280),
          ),
        ),
      ],
    );
  }
}
