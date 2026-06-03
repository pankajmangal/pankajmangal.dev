import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/app_colors.dart';

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
              height: 1.4,
              foreground: Paint()
                ..shader = const LinearGradient(
                  colors: [
                    Color(0xFF4F46E5),
                    Color(0xFF6366F1),
                    Color(0xFF8B5CF6),
                  ],
                ).createShader(
                  const Rect.fromLTWH(
                    0,
                    0,
                    500,
                    100,
                  ),
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
