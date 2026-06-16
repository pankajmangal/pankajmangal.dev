import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

class HeroDescriptionWidget extends StatelessWidget {
  const HeroDescriptionWidget({super.key, this.fontSize = Dimens.fontSize16,
    this.fontWeight = FontWeight.w400, this.textAlign = TextAlign.center});

  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Hi, I\'m ',
            style: GoogleFonts.inter(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: AppColors.lightText,
              height: 1.6,
            ),
          ),
          TextSpan(
            text: 'Pankaj Mangal',
            style: GoogleFonts.inter(
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
              height: 1.6,
            ),
          ),
          TextSpan(
            text: ' — a Flutter Lead Engineer with 9+ years in mobile, shipping high-performance apps used by 500K+ users across iOS, Android & Web.',
            style: GoogleFonts.inter(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: AppColors.lightText,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
