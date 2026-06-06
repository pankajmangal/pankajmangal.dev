import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class AboutSkillChip extends StatelessWidget {
  const AboutSkillChip({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(Dimens.circularRadius10),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: Dimens.fontSize12,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF4B5563),
        ),
      ),
    );
  }
}
