import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';

class SectionDescription extends StatelessWidget {
  const SectionDescription({super.key, required this.title,
    required this.fontSize, required this.fontWeight,
    this.textAlign = TextAlign.start});

  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: GoogleFonts.inter(
        fontSize: fontSize,
        height: 1.6,
        fontWeight: fontWeight,
        color: AppColors.sectionDescColor,
      ),
    );
  }
}
