import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';

import '../../../widgets/gradients/gradient_text.dart';

class HeroHeadingWidget extends StatelessWidget {
  const HeroHeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'I architect ',
            style: GoogleFonts.inter(
              fontSize: 64,
              fontWeight: FontWeight.w700,
              color: AppColors.heading,
              height: 1.2,
            ),
          ),
          WidgetSpan(
            child: GradientText(
              text: 'scalable',
              fontSize: Dimens.fontSize64,
              fontWeight: FontWeight.w700,
            ),
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
          ),
          TextSpan(
            text: '\nmobile experiences.',
            style: GoogleFonts.inter(
              fontSize: 64,
              fontWeight: FontWeight.w700,
              color: AppColors.heading,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
