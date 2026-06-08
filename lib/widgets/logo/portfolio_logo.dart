import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/widgets/gradients/gradient_text.dart';

class PortfolioLogo extends StatelessWidget {
  const PortfolioLogo({super.key, this.textHeadingColor = AppColors.heading});
  final Color textHeadingColor;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '<',
            style: GoogleFonts.inter(
              color: textHeadingColor,
              fontSize: Dimens.fontSize16,
              fontWeight: FontWeight.w500,
            ),
          ),
          WidgetSpan(
            child: GradientText(
              text: 'pankaj',
              fontSize: Dimens.fontSize16,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.3,
            ),
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
          ),
          TextSpan(
            text: '.dev />',
            style: GoogleFonts.inter(
              color: textHeadingColor,
              fontSize: Dimens.fontSize16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
