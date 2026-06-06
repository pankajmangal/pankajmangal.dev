import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class FeatureCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xffE5E7EB)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: active ? const Color(0xff4F46E5) : const Color(0xffEEF2FF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                icon,
                colorFilter: ColorFilter.mode(
                  active ? Colors.white : const Color(0xff4F46E5),
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: Dimens.fontSize16,
              fontWeight: FontWeight.w700,
              color: const Color(0xff111827),
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            description,
            style: GoogleFonts.inter(
              fontSize: Dimens.fontSize14,
              height: 1.5,
              color: const Color(0xff6B7280),
            ),
          ),
        ],
      ),
    );
  }
}
