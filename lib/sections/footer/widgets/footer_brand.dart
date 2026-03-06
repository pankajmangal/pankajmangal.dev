import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/sections/footer/footer_section.dart';

class FooterBrand extends StatelessWidget {
  const FooterBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [

          Text(
            "<FlutterDev />",
            style: GoogleFonts.inter(
              color: FooterSection.primary,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            "Building beautiful and performant mobile applications with Flutter.",
            style: GoogleFonts.inter(
              color: FooterSection.textLight,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}