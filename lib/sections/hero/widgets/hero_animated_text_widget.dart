import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/core/utils/dimens.dart';
import 'package:pankaj_portfolio/core/utils/strings.dart';

class HeroAnimatedTextWidget extends StatelessWidget {
  const HeroAnimatedTextWidget({super.key, this.heroFontSize = Dimens.fontSize18});
  final double heroFontSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TypewriterAnimatedText(
          Strings.animatedText1,
          speed: const Duration(milliseconds: 50),
          textStyle: GoogleFonts.inter(
            fontSize: heroFontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
        TypewriterAnimatedText(
          Strings.animatedText2,
          speed: const Duration(milliseconds: 50),
          textStyle: GoogleFonts.inter(
            fontSize: heroFontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
        TypewriterAnimatedText(
          Strings.animatedText3,
          speed: const Duration(milliseconds: 50),
          textStyle: GoogleFonts.inter(
            fontSize: heroFontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
        TypewriterAnimatedText(
          Strings.animatedText4,
          speed: const Duration(milliseconds: 50),
          textStyle: GoogleFonts.inter(
            fontSize: heroFontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
