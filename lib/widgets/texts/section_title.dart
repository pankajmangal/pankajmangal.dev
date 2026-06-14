import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title,
    required this.fontSize, required this.fontWeight});

  final String title;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontSize: fontSize,
        height: 1.05,
        fontWeight: fontWeight,
        color: AppColors.sectionTitleColor,
      ),
    );
  }
}
