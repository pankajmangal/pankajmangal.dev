import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title,
    required this.fontSize, required this.fontWeight});

  final String title;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.jetBrainsMono(
        fontSize: fontSize,
        letterSpacing: 2,
        height: 1.65,
        fontWeight: fontWeight,
        color: AppColors.primary,
      ),
    );
  }
}
