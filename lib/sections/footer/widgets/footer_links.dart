import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pankaj_portfolio/sections/footer/footer_section.dart';

class FooterLinks extends StatelessWidget {
  const FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    final links = [
      "Home",
      "About",
      "Skills",
      "Projects",
      "Contact",
    ];

    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [

        Text(
          "Quick Links",
          style: GoogleFonts.inter(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),

        const SizedBox(height: 20),

        ...links.map(
              (e) => Padding(
            padding:
            const EdgeInsets.only(bottom: 12),
            child: Text(
              e,
              style: GoogleFonts.inter(
                color: FooterSection.textLight,
              ),
            ),
          ),
        )
      ],
    );
  }
}