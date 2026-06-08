import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double letterSpacing;
  final double textHeight;

  const GradientText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.letterSpacing = -2,
    this.textHeight = 1.4,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF5B6CF8),
            Color(0xFF6D63F1),
            Color(0xFF8B5CF6),
          ],
        ).createShader(bounds);
      },
      child: Text(
        text,
        style: GoogleFonts.inter(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
          height: textHeight,
        ),
      ),
    );
  }
}