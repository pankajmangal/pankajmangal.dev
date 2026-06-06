import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';
import 'package:pankaj_portfolio/core/utils/app_gradients.dart';

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
              fontWeight: FontWeight.w800,
              color: AppColors.heading,
              height: 1.2,
            ),
          ),
          TextSpan(
            text: 'scalable',
            style: GoogleFonts.inter(
              fontSize: 64,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.3,
              height: 1.5,
              foreground: Paint()
                ..shader = AppGradients.primary.createShader(
                  const Rect.fromLTWH(0, 0, 500, 200),
                ),
            ),
          ),
          TextSpan(
            text: '\nmobile experiences.',
            style: GoogleFonts.inter(
              fontSize: 64,
              fontWeight: FontWeight.w800,
              color: AppColors.heading,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
