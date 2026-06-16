import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

import '../../../widgets/gradients/gradient_text.dart';

class HeroHeadingWidget extends StatelessWidget {
  const HeroHeadingWidget({super.key, this.fontSize = Dimens.fontSize48,
    this.fontWeight = FontWeight.w700, this.textAlign = TextAlign.center});

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
            text: 'I architect ',
            style: GoogleFonts.inter(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: AppColors.heading,
              height: 1.2,
            ),
          ),
          WidgetSpan(
            child: GradientText(
              text: 'scalable',
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
          ),
          TextSpan(
            text: ' mobile experiences.',
            style: GoogleFonts.inter(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: AppColors.heading,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
