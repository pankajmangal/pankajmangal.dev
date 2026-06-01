import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const GradientText({super.key,
      required this.text,
        required this.fontSize,
        required this.fontWeight,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        fontSize: fontSize,
        fontWeight: fontWeight,
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
              600,
              120,
            ),
          ),
      ),
    );
  }
}