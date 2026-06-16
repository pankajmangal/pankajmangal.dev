import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/scroll_controller.dart';
import 'package:pankaj_portfolio/widgets/gradients/gradient_text.dart';

class PortfolioLogo extends StatelessWidget {
  const PortfolioLogo({super.key, this.textHeadingColor = AppColors.heading,
    this.fontSize = Dimens.fontSize16, this.fontWeight = FontWeight.w500});
  final Color textHeadingColor;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ScrollManager.scrollTo(ScrollManager.heroKey),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '<',
              style: GoogleFonts.inter(
                color: textHeadingColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
            WidgetSpan(
              child: GradientText(
                text: 'pankaj',
                fontSize: fontSize,
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
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
